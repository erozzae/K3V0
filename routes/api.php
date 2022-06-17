<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthTokenApi\LoginController;
use App\Http\Controllers\AuthTokenApi\LogoutController;
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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });


//Auth & Admin
Route::prefix('/auth')->group(function(){
    Route::post('/login',[LoginController::class,'login']);
    Route::post('/logout',[LogoutController::class,'logout']);

    //Bab
    //Get All Bab -> Auth
    Route::middleware(['auth:api'])->get('/bab/allBab','BabController@getAllBab');
    //Add Bab -> Admin
    Route::middleware(['auth:api','admin'])->post('/bab/store','BabController@storeBab');
    //Find Bab by Id (for update) -> Auth
    Route::middleware(['auth:api'])->get('/bab/findBab/{id}','BabController@findBab');
    //Update Bab -> Admin
    Route::middleware(['auth:api','admin'])->post('/bab/update/{id}','BabController@updateBab');
    //find Soal/Bab -> Auth
    Route::middleware(['auth:api'])->get('/soal/bab/findSoal/{id}','BabController@findSoalByBab');

    //Introduction
    //Find Introduction for update -> Auth
    Route::middleware(['auth:api'])->get('/introduction/findIntroduction/{id}','IntroductionController@IntroductionFindById');
    //Update Introduction -> Admin
    Route::middleware(['auth:api','admin'])->post('/introduction/update/{id}','IntroductionController@updateIntroduction');

    //About 
    //Find About for update -> Auth
    Route::middleware(['auth:api'])->get('/about/findAbout/{id}','AboutController@aboutFindById');
    //Update Introduction About -> Admin
    Route::middleware(['auth:api','admin'])->post('/about/update/{id}','AboutController@updateAbout');

    //Soal
    //Get all soal -> Auth
    Route::middleware(['auth:api'])->get('/soal/allSoal','SoalController@getAllSoal');
    //add Soal -> Admin
    Route::middleware(['auth:api','admin'])->post('/soal/storeSoal/{id_bab}','SoalController@storeSoal');
    //find Soal -> Auth
    Route::middleware(['auth:api'])->get('/soal/findSoal/{id}','SoalController@findSoalById');

    //User
    //Get All User -> Admin
    Route::middleware(['auth:api','admin'])->get('/user/allUser','UserController@getAllUser');
    //Add User -> Admin
    Route::middleware(['auth:api','admin'])->post('/user/store','UserController@store');
    //Delete User -> Admin
    Route::middleware(['auth:api','admin'])->post('/user/delete/{id}','UserController@delete');
  


});



