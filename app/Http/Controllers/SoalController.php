<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Soal;
class SoalController extends Controller
{

    public function getAllSoal(){
        $allSoal = Soal::orderBy('updated_at','asc')->get();
        $count = Soal::all()->count();
        return response()->json(['allSoal'=>$allSoal,
                                  'countSoal'=>$count]);

    }

    public function storeSoal(Request $request){
        $this->validate($request,[
            'judul_soal' => 'required|string|max:40',
            'soal'=>'required|string',
        ],
        [
            'judul_soal.required'=>'Wajib diisi dengan benar sesuai format',
            'soal.required'=>'Wajib diisi dengan benar sesuai format',
            
        ]);

        $addSoal = new Soal;
        $addSoal->judul_soal = $request->judul_soal;
        $addSoal->soal = $request->soal;   
        $addSoal->save();
        return response($addSoal,201);

    }

    public function findSoalById($id){
        $findSoal = Soal::find($id);
        if(is_null($findSoal)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['GetBabById'=>$findSoal]);
        }
    }

    public function deleteSoal($id){
        $delete = Soal::find($id);
        if(is_null($delete)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            $delete->delete();
            return response()->json(['message'=>'deleted data sucessfully']);
        }
    }
}
