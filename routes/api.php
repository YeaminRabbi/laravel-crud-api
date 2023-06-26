<?php
namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthenticationController;
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



Route::middleware('auth:sanctum')->group(function () {
    
    
    Route::get('/check', function () {
        return response()->json([
            'data' => '111',
        ]);
    });
    
    
});

Route::resource('products', ProductController::class);  

Route::post('login', [AuthenticationController::class, 'LOGIN'])->name('login');
Route::post('create/user', [AuthenticationController::class, 'account_create'])->name('account_create');
Route::get('logout', [AuthenticationController::class, 'LOGOUT'])->name('logout');



