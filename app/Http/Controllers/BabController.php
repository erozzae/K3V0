<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bab;

class BabController extends Controller
{
    public function getAllBab(){
        $allBab = Bab::orderBy('updated_at','asc')->get();
        return response()->json(['allBab'=>$allBab]);

    }

    public function storeBab(Request $request){
        $this->validate($request,[
            'nama_bab' => 'required|string|max:30',
        ],
        [
            'nama_bab.required'=>'Wajib diisi dengan benar sesuai format',
            
        ]);

        $addBab = new Bab;
        $addBab->nama_bab = $request->nama_bab;  
        $addBab->save();
        return response($addBab,201);

    }
    public function updateBab(Request $request,$id){
        $this->validate($request,[
            'nama_bab' => 'required|string|max:30',
        ],
        [
            'nama_bab.required'=>'Wajib diisi dengan benar sesuai format',
            
        ]);
        
        $updateBab = Bab::find($id);
        $updateBab->nama_bab = $request->nama_bab;
        $updateBab->update();
        return response(['update data sucessfully'=>$updateBab]);
    }

    public function getBabById($id){
        $getBab = Bab::find($id);
        if(is_null($getBab)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['GetBabById'=>$getBab]);
        }
    }

    public function deleteBab($id){
        $delete = Bab::find($id);
        if(is_null($delete)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            $delete->delete();
            return response()->json(['message'=>'deleted data sucessfully']);
        }

    }
    public function findBab($id){
        $findBab = Bab::find($id);
        if(is_null($findBab)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['BabById'=>$findBab]);
        }
    }
    
    

    
}
