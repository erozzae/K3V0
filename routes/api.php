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
    //add Soal -> Auth
    Route::middleware(['auth:api','admin'])->post('/soal/storeSoal/{id_bab}','SoalController@storeSoal');
    //find Soal -> Auth
    Route::middleware(['auth:api'])->get('/soal/findSoal/{id}','SoalController@findSoalById');
  


});



// // Bab
// // Get All Bab
// Route::get('/bab/allBab','BabController@getAllBab');

// //Add Bab
// Route::post('/bab/store','BabController@storeBab');

// //Find Bab by Id (for update)
// Route::get('/bab/findBab/{id}','BabController@findBab');

// //Update Bab
// Route::post('/bab/update/{id}','BabController@updateBab');

// //Delete Bab
// Route::post('/bab/delete/{id}','BabController@deleteBab'); //Tidak diperlukan karena bab fix berjumlah 7 


// //Introduction
// //Find Introduction for update
// Route::get('/introduction/findIntroduction/{id}','IntroductionController@IntroductionFindById');

// //Update Introduction
// Route::post('/introduction/update/{id}','IntroductionController@updateIntroduction');


// //About 
// //Find About for update
// Route::get('/about/findAbout/{id}','AboutController@aboutFindById');
// //Update Introduction About 
// Route::post('/about/update/{id}','AboutController@updateAbout');


//Soal

// //Get all soal
// Route::get('/soal/allSoal','SoalController@getAllSoal');
// //add Soal
// Route::get('/soal/storeSoal/{id_bab}','SoalController@storeSoal');

// //find Soal
// Route::get('/soal/findSoal/{id}','SoalController@findSoalById');

