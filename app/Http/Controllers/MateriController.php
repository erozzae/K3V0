<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Materi;
use App\Judul_Materi;
use App\Bab;
class MateriController extends Controller
{
   
    public function getAllMateri(){
        $allMateri = Materi::orderBy('updated_at','asc')->get();
        return response()->json(['AllMateri'=>$allMateri]);
    }


    public function storeMateri(Request $request,$id){
        $this->validate($request,[
            'isi_materi'=>'required|string'
        ],
        [
            'isi_materi.required'=>'Wajib diisi dengan benar sesuai format'
        ]);

       $storeMateri = new Materi;
       $storeMateri->isi_materi = $request->isi_materi;
       $storeMateri->id_judul_materi = $id;
       
       $findBab = Judul_Materi::find($id);
       $storeMateri->id_bab = $findBab->id_bab;

       $storeMateri->save();
       return response()->json($storeMateri,201);
    }

    public function findJudulById($id){
        $findJudulMateri = Judul_Materi::find($id);

        if(is_null($findJudulMateri)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['JudulMateriById'=>$findJudulMateri]);
        }
    }

    public function deleteMateri($id){
        $deleteMateri = Materi::find($id);
        if(is_null($deleteMateri)){
            return response()->json(['message'=>'data not found',404]);

        }
        else{
            $deleteMateri->delete();
            return response()->json(['message'=>'deleted data sucessfully']);
        }
    }
}
