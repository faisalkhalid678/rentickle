<?php

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

Route::get('/homepage','App\Http\Controllers\HomepageController@index');
Route::get('/product_detail','App\Http\Controllers\ProductsController@index');
Route::get('/add_to_cart','App\Http\Controllers\AddToCartController@index');
