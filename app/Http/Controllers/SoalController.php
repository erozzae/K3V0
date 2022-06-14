<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Soal;

class SoalController extends Controller
{

    public function __construct()
    {
       $this->middleware('auth:api');
    }
    
    public function getAllSoal(){
       $allSoal = Soal::orderBy('created_at')->get();
       $count = Soal::all()->count();
       return response()->json(['allSoal'=>$allSoal,
                                 'totalSoal'=>$count]);

    }

    public function storeSoal(Request $request,$id_bab){
        $this->validate($request,[
            'soal'=>'required|string',
            // 'kunci_jawaban'=>'required|enum'
        
        ],
        [
            'soal.required'=>'Wajib diisi dengan benar sesuai format',
            
        ]);

        $addSoal = new Soal;
        $addSoal->soal = $request->soal;   
        $addSoal->kunci_jawaban = $request->kunci_jawaban;
        $addSoal->id_bab = $id_bab;
        $addSoal->A = $request->A;
        $addSoal->B = $request->B;
        $addSoal->C = $request->C;
        $addSoal->D = $request->D;
        $addSoal->save();
        return response($addSoal,201);

    }

    public function findSoalById($id){
        $findSoal = Soal::find($id);
        if(is_null($findSoal)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['GetSoalById'=>$findSoal]);
        }
    }

   
    // public function deleteSoal($id){
    //     $delete = Soal::find($id);
    //     if(is_null($delete)){
    //         return response()->json(['message'=>'data not found',404]);
    //     }
    //     else{
    //         $delete->delete();
    //         return response()->json(['message'=>'deleted data sucessfully']);
    //     }
    // }
}
