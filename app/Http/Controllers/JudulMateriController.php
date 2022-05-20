<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Judul_Materi;
use App\Bab;

class JudulMateriController extends Controller
{
    public function getAllJudulMateri(){
        $allJudulMateri = Judul_Materi::orderBy('updated_at','asc')->get();
        return response()->json(['allJudulMateri'=>$allJudulMateri]);
    }

    public function findBabById($id){
        $findIdBab = Bab::find($id);

        if(is_null($findIdBab)){
            return response()->json(['message'=>'data not found',404]);
       }
       else{
           return response()->json(['BabById'=> $findIdBab]);
       }

    }

    public function findJudul($id){
         $findJudul = Judul_Materi::find($id);
        if(is_null($findJudul)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['JudulById'=>$findJudul]);
        }
    }

    public function storeJudulMateri(Request $request,$id){
        $this->validate($request,[
            'judul'=> 'required|string|max:35'
        ],
        [
            'judul.required'=>'Wajib diisi dengan benar sesuai format'
        ]);
        $addJudulMateri = new Judul_Materi;
        $addJudulMateri->judul = $request->judul;
        $addJudulMateri->id_bab = $id;
        $addJudulMateri->save(); 
        return response($addJudulMateri,201);
    }

    public function updateJudul(Request $request,$id){
        $this->validate($request,[
            'judul' => 'required|string|max:35',
        ],
        [
            'judul.required'=>'Wajib diisi dengan benar sesuai format',
            
        ]);
        
        $updateJudul = Judul_Materi::find($id);
        $updateJudul->judul = $request->judul;
        $updateJudul->update();
        return response(['update data sucessfully'=>$updateJudul]);
    }


    public function deleteJudul($id){
        $deleteJudul = Judul_Materi::find($id);

        if(is_null($deleteJudul)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            $deleteJudul->delete();
            return response()->json(['message'=>'deleted data sucessfully']);
        }
    }

}
