<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades;
use Illuminate\Support\Facades\Auth;
use App\Bab;
use File;

class BabController extends Controller
{

    
   
  
    public function getAllBab(){
        $allBab = Bab::orderBy('created_at','asc')->get();
        $count = Bab::all()->count();
        return response()->json(['allBab'=>$allBab,
                                  'totalBab'=>$count]);

    }

    public function storeBab(Request $request){
        $this->validate($request,[
            'nama_bab' => 'required|string|max:30',
            'isi_materi'=>'required|mimes:pdf',
        ],
        [
            'nama_bab.required'=>'Wajib diisi dengan benar sesuai format, maksimal 30 karakter',
            'isi_materi.required'=>'Wajib diisi dengan format pdf maksimal 16 mb'
            
        ]);

        $addBab = new Bab;
        $addBab->nama_bab = $request->nama_bab;  
        $addBab->isi_materi = $request->isi_materi;
        // $file = $request->isi_materi;
        // $fileName =  time().'.'.$file->getClientOriginalExtension();
        // $request->isi_materi->move('materi',$fileName);

        // $addBab->isi_materi = $fileName;
        
        // $addBab->isi_materi = $request->file('isi_materi')->store('materials');

        
        $addBab->save();
        return response($addBab,201);

    }
    public function updateBab(Request $request,$id){
        $this->validate($request,[
            'nama_bab' => 'required|string|max:30',
            'isi_materi' => 'required|mimes:pdf',
        ],
        [
            'nama_bab.required'=>'Wajib diisi dengan benar sesuai format, maksimal 30 karakter',
            'isi_materi.required'=>'Wajib diisi menggunakan format pdf maksimal 16 mb',
            
        ]);
        
        $updateBab = Bab::find($id);
        $updateBab->nama_bab = $request->nama_bab;
        $updateBab->isi_materi = $request->isi_materi;
        $updateBab->update();
        return response(['update data sucessfully'=>$updateBab]);
    }


    // public function getBabPdf($id){
    //     $getBab = Bab::find($id);
    //     if(is_null($getBab)){
    //         return response()->json(['message'=>'data not found',404]);
    //     }
    //     else{
    //         // $getBab = $getBab['GetBabById'];
    //         $getBab = $getBab['isi_materi'];
    //         return response()->json(['GetBabById'=>asset('materi/'.$getBab)]);
    //         // return response()->json(['GetBabById'=>$getBab]);
    //     }
    // }

  

    // public function deleteBab($id){
    //     $delete = Bab::find($id);
    //     if(is_null($delete)){
    //         return response()->json(['message'=>'data not found',404]);
    //     }
    //     else{

          
    //         $delete->delete();
    //         return response()->json(['message'=>'deleted data sucessfully']);
    //     }

    // }
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
