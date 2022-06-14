<?php

namespace App\Http\Controllers;
use App\Introduction;
use Illuminate\Http\Request;

class IntroductionController extends Controller
{
    public function __construct()
    {
       $this->middleware('auth:api');
    }
    public function IntroductionFindById($id){
        $findIntroduction = Introduction::find($id);
        if(is_null( $findIntroduction)){
            return response()->json(['message'=>'data not found',404]);
        }
        else{
            return response()->json(['IntroductionFindById'=> $findIntroduction]);
        }
    }

    public function updateIntroduction(Request $request, $id){
        $this->validate($request,[
            'introduction'=>'required|string'
        ],
        [
            'introduction.required'=>'Wajib diisi dengan benar sesuai format'
        ]);

        $updateIntroduction = Introduction::find($id);
        $updateIntroduction->introduction = $request->introduction;
        $updateIntroduction->update();
        return response()->json(['update data sucessfully'=>$updateIntroduction]);
    }
}
