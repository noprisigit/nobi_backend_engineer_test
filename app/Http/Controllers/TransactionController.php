<?php

namespace App\Http\Controllers;

use App\Models\Balance;
use App\Models\Transaction;
use App\Models\User;
use Exception;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class TransactionController extends Controller
{
  /**
   * Create a new TransactionController instance.
   * 
   * 
   * @return void
   */
  public function __construct()
  {
    $this->middleware('auth:api');
  }

  /**
   * Get a transaction by user id
   * 
   * @return \Illuminate\Http\JsonResponse
   */
  public function index(Request $request)
  {
    $validator = Validator::make($request->all(), [
      'trx_id' => [
        'required',
        'string',
        Rule::unique('transaction')->where(function ($query) use ($request) {
          return $query->where('user_id', $request->user_id);
        })
      ],
      'amount' => 'required',
      'user_id' => 'required|integer'
    ]);

    if ($validator->fails()) {
      return response()->json($validator->errors(), 400);
    }

    if (auth()->user()->id != $request->user_id) {
      return response()->json([
        'status' => false,
        'message' => 'This user is not logged in yet'
      ]);
    }

    if ($request->amount == 0.00000001) {
      return response()->json([
        'status' => false,
        'message' => 'The amount cannot be 0.00000001'
      ], 500);
    }

    try {

      $balance = Balance::where('user_id', $request->user_id)->first();

      $amount_available = $balance->amount_available;
      if ($amount_available < $request->amount) {
        return response()->json([
          'status' => false,
          'message' => 'Insufficient amount'
        ], 500);
      }

      DB::transaction(function () use ($amount_available, $request) {

        Transaction::create([
          'trx_id' => $request->trx_id,
          'user_id' => (int) $request->user_id,
          'amount' => (float) $request->amount
        ]);

        sleep(30);

        $remaining_amount = $amount_available - $request->amount;
        Balance::where('user_id', $request->user_id)
          ->update(['amount_available' => $remaining_amount]);
      });

      return response()->json([
        'trx_id' => $request->trx_id,
        'amount' => $request->amount,
        'message' => 'Transaction created succesfully'
      ]);
    } catch (QueryException $ex) {
      return response()->json([
        'status' => false,
        'message' => $ex->getMessage()
      ], 404);
    } catch (Exception $ex) {
      return response()->json([
        'status' => false,
        'message' => $ex->getMessage()
      ]);
    }
  }
}
