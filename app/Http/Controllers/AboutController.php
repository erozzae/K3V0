<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\about;
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
            'about'=>'required|string'
        ],
        [
            'about.required'=>'Wajib diisi dengan benar sesuai format'
        ]);

        $updateAbout = About::find($id);
        $updateAbout->about = $request->about;
        $updateAbout->update();
        return response()->json(['update data sucessfully'=>$updateAbout]);
    }
}
