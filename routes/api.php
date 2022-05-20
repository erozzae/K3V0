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

//Get Bab by Id
Route::get('/bab/{id}','BabController@getBabById');

//Add Bab
Route::post('/bab/store','BabController@storeBab');

//Find Bab by Id (for update)
Route::post('/bab/findBab/{id}','BabController@findBab');

//Update Bab
Route::post('/bab/update/{id}','BabController@updateBab');

//Delete Bab
Route::post('/bab/delete/{id}','BabController@deleteBab');

//

//Judul Materi
//Get All Judul Materi
Route::get('/judul/allJudulMateri','JudulMateriController@getAllJudulMateri');

// ----
//Find Bab by Id for foreignKey field (for add data)
Route::post('/judul/findBab/{id_bab}','JudulMateriController@findBabById');  

//Add Judul Materi
Route::post('/judul/store/{id_bab}','JudulMateriController@storeJudulMateri');

//Find Judul by Id (for update)
Route::post('/judul/findJudul/{id}','JudulMateriController@findJudul');

//Update Judul
Route::post('/judul/update/{id}','JudulMateriController@updateJudul');

//Delete Judul
Route::post('judul/delete/{id}','JudulMateriController@deleteJudul');

//

//Materi
//Get All Materi
Route::get('/materi/allMateri','MateriController@getAllMateri');
//----
//Find Judul by Id for foreignKey field (for add data)
Route::post('materi/findJudul/{id_judul_materi}','MateriController@findJudulById'); 

//Add Materi
Route::post('materi/store/{id_judul_materi}', 'MateriController@storeMateri');

//Delete Materi
Route::post('materi/delete/{id}','MateriController@deleteMateri'); 

