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


//Bab
//Get All Bab
Route::get('/bab/allBab','BabController@getAllBab');

//Get Bab Pdf by Id
Route::get('/bab/pdf/{id}','BabController@getBabPdf'); 

//Add Bab
Route::post('/bab/store','BabController@storeBab');

//Find Bab by Id (for update)
Route::get('/bab/findBab/{id}','BabController@findBab');

//Update Bab
Route::post('/bab/update/{id}','BabController@updateBab');

//Delete Bab
Route::post('/bab/delete/{id}','BabController@deleteBab');


//Introduction
//Find Introduction for update
Route::get('/introduction/findIntroduction/{id}','IntroductionController@IntroductionFindById');

//Update Introduction
Route::post('/introduction/update/{id}','IntroductionController@updateIntroduction');


//About 
//Find About for update
Route::get('/about/findAbout/{id}','AboutController@aboutFindById');
//Update Introduction About 
Route::post('/about/update/{id}','AboutController@updateAbout');


//Soal
//addSoal
Route::get('/soal/storeSoal/{id_bab}','SoalController@storeSoal');

//findSoal
Route::get('/soal/findSoal/{id}','SoalController@findSoalById');

