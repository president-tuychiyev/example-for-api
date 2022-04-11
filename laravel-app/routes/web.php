<?php

use App\Http\Controllers\Other\landingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [ landingController::class, 'index' ])->name('index');

Route::get('/lang/{set}', [ landingController::class, 'lang' ])->name('lang');

Route::post('/send-data', [ landingController::class, 'sendData' ])->name('send.data');
