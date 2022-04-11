<?php

use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\RoleController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Other\landingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes | this code powered by President Tuychiyev
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

#begin::Open apis
    #begin::Landing page
    Route::post('/district', [landingController::class, 'district']);
    Route::post('/contact', [landingController::class, 'contact']);
    #end::Landing page
#end::Open apis

#begin::Auth
Route::group([ 'middleware' => 'api', 'prefix' => 'auth', ], function ($router) {
    Route::post('login', [ AuthController::class, 'login' ]);
    Route::post('logout', [ AuthController::class, 'logout' ]);
    Route::post('refresh', [ AuthController::class, 'refresh' ]);
    Route::post('refresh', [ AuthController::class, 'me' ]);
});
#end::Auth

#begin::Close apis
Route::group([ 'namespace' => 'apis', 'middleware' => 'jwt.auth' ], function () {
    #begin::Roles 
    Route::post('create-role', [ RoleController::class, 'create' ]);
    Route::get('read-role', [ RoleController::class, 'read' ]);
    Route::post('update-role', [ RoleController::class, 'update' ]);
    Route::post('delete-role', [ RoleController::class, 'delete' ]);
    #end::Roles 

    #begin::Users
    Route::post('create-user', [ UserController::class, 'create' ]);
    Route::get('read-user', [ UserController::class, 'read' ]);
    Route::post('update-user', [ UserController::class, 'update' ]);
    Route::post('delete-user', [ UserController::class, 'delete' ]);
    Route::post('select-user', [ UserController::class, 'select' ]);
    #end::Users

    #begin::Employee
    Route::post('create-employee', [ EmployeeController::class, 'create' ]);
    Route::get('read-employee', [ EmployeeController::class, 'read' ]);
    #end::Employee
});
#end::Close apis
