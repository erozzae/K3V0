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

//Find Id Materi for update materi
Route::post('materi/findMateri/{id}','MateriController@findMateriById');

//Update Materi
Route::post('/materi/update/{id}','MateriController@updateMateri');

//Delete Materi
Route::post('materi/delete/{id}','MateriController@deleteMateri'); 


//Dokumentasi User
//Add Dokumen
Route::post('/dokumentasi/add','MateriController@dokumentasiAdd');

//Find Dokumen 
Route::post('/dokumentasi/findDokumen/{id}','MateriController@dokumentasiFindById');


//Introduction
//Find Introduction for update
Route::post('/introduction/findIntroduction/{id}','IntroductionController@IntroductionFindById');

//Update Introduction
Route::post('/introduction/update/{id}','IntroductionController@updateIntroduction');


//About 
//Find About for update
Route::post('/about/findAbout/{id}','AboutController@aboutFindById');
//Update Introduction About 
Route::post('/about/update/{id}','AboutController@updateAbout');


//Soal

//Get ALl Soal
Route::get('/soal/allSoal','SoalController@getAllSoal'); 

//Add Soal
Route::post('/soal/store/','SoalController@storeSoal');

//Find Soal for update
Route::post('/soal/findSoal/{id}','SoalController@findSoalById');

//Update Soal
Route::post('/soal/delete/{id}','SoalController@deleteSoal');
