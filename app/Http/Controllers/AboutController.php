<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;

class AboutController extends Controller
{
    public function aboutFindById($id){
        $findAbout = About::find($id);
        if(is_null( $findAbout)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['AboutFindById'=> $findAbout]);
        }
    }

    public function updateAbout(Request $request, $id){
        $this->validate($request,[
            'about_aplikasi'=>'required|string',
             'about_lab'=>'required|string'
        ],
        [
            'about_aplikasi.required'=>'Wajib diisi dengan benar sesuai format',
            'about_lab.required'=>'Wajib diisi dengan benar sesuai format'
        ]);

        $updateAbout = About::find($id);
        $updateAbout->about_aplikasi = $request->about_aplikasi;
        $updateAbout->about_lab = $request->about_lab;
        $updateAbout->update();
        return response()->json(['update data sucessfully'=>$updateAbout]);
    }
}
