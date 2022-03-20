<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\PriceController;
use App\Http\Controllers\QuoteController;
use App\Http\Controllers\TransactionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1'], function () {

  Route::group(['middleware' => 'api', 'prefix' => 'auth'], function () {
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
  });

  Route::group(['middleware' => 'api', 'prefix' => 'quote'], function() {
    Route::get('/', [QuoteController::class, 'index']);
  });

  Route::group(['middleware' => 'api', 'prefix' => 'transaction'], function() {
    Route::post('/', [TransactionController::class, 'index']);
  });

  Route::group(['middleware' => 'api', 'prefix' => 'price'], function() {
    Route::post('/upload', [PriceController::class, 'upload']);
    Route::post('/low-high', [PriceController::class, 'lowHigh']);
    Route::post('/history', [PriceController::class, 'history']);
  });

});
