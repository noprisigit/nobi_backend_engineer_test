<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class QuoteController extends Controller
{
  /**
   * 
   * Get a quote
   * 
   * @return \Illuminate\Http\JsonResponse
   */

  public function index()
  {
    $quote_urls = [
      'https://api.chucknorris.io/jokes/random',
      'https://dog-facts-api.herokuapp.com/api/v1/resources/dogs?number=1',
      'https://catfact.ninja/fact'
    ];

    $random_number = rand(0, count($quote_urls) - 1);
    
    try {
      $response = Http::get($quote_urls[$random_number]);
    
      switch ($random_number) {
        case 0:
          $quote = $response->json('value');
          break;
        case 1:
          $quote = $response->json()[0]['fact'];
          break;
        case 2:
          $quote = $response->json('fact');
          break;
      }
  
      return response()->json([
        'status' => true,
        'quote' => $quote,
        'source' => $quote_urls[$random_number]
      ]);
    } catch (Exception $ex) {
      return response()->json([
        'status' => false,
        'message' => $ex->getMessage()
      ], 500);
    }
    
  }
}
