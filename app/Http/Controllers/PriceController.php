<?php

namespace App\Http\Controllers;

use App\Imports\PriceImport;
use App\Jobs\PriceImportJob;
use App\Models\Price;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;

class PriceController extends Controller
{
  /**
   * Create a new PriceController instance.
   * 
   * 
   * @return void
   */
  public function __construct()
  {
    $this->middleware('auth:api');
  }

  /**
   * Uploading CSV file of price list
   * 
   * @param \Illuminate\Http\Request
   * 
   * @return \Illuminate\Http\JsonResponse
   */
  public function upload(Request $request)
  {
    $validator = Validator::make($request->all(), [
      'file' => 'required|file|mimes:csv,txt|max:102400'
    ]);

    if ($validator->fails()) {
      return response()->json($validator->errors(), 400);
    }

    Excel::import(new PriceImport(), $request->file('file'));

    return response()->json([
      'status' => true,
      'message' => 'File uploaded successfull'
    ]);
  }

  /**
   * Getting low and high price in the period base on request
   * 
   * @param \Illuminate\Http\Request
   * 
   * @return \Illuminate\Http\JsonResponse
   */
  public function lowHigh(Request $request)
  {
    $max_price = 0;
    $min_price = 0;

    $prices = Price::query();

    if ($request->has('year') && $request->has('week')) {
      $prices = $prices->whereYear('record_time', $request->year)
        ->whereMonth('record_time', $request->week);
    }

    if ($request->has('week')) {
      $prices = $prices->where('record_time', $request->week);
    }

    if ($request->has('year')) $prices = $prices->whereYear('record_time', $request->year);

    if ($request->has('ticker'))  $prices = $prices->where('ticker', $request->ticker);

    if ($request->has('currency')) {
      if ($request->currency != "usd" && $request->currency != "idr") {
        return response()->json([
          'status' => false,
          'message' => 'Choose idr or usd'
        ]);
      }

      $max_price = $prices->max($request->currency);
      $min_price = $prices->min($request->currency);
    }

    return response()->json([
      'status' => true,
      'message' => "Data found",
      'data' => [
        'min' => $min_price,
        'max' => $max_price,
        'week' => $request->week,
        'year' => $request->year,
        'pair' => $request->ticker
      ]
    ]);
  }

  /**
   * Getting price history base on request
   * 
   * @param \Illuminate\Http\Request
   * 
   * @return \Illuminate\Http\JsonResponse
   */
  public function history(Request $request)
  {
    $prices = Price::query();

    if ($request->has('start') && $request->has('end'))
      $prices = $prices->whereBetween('record_time', [Carbon::create($request->start), Carbon::create($request->end)]);

    if ($request->has('start'))
      $prices = $prices->where('record_time', '>=', Carbon::create($request->start));

    if ($request->has('end'))
      $prices = $prices->where('record_time', '<=', Carbon::create($request->end));

    if ($request->has('ticker'))
      $prices = $prices->where('ticker', $request->ticker);

    if ($request->has('currency')) {
      if ($request->currency != "usd" && $request->currency != "idr") {
        return response()->json([
          'status' => false,
          'message' => 'Choose idr or usd'
        ]);
      }
    }

    $prices = $prices->get();

    return response()->json([
      'status' => true,
      'message' => 'Data found',
      'data' => [
        'start' => $request->start,
        'end' => $request->end,
        'price' => $prices
      ]
    ]);
  }
}
