<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\support\facades\Hash;


class ProfileController extends Controller
{
    public function __construct()
    {
       $this->middleware(['auth:api']);
    }

    public function update(Request $request, $id){
        $this->validate($request,[
            'name' => 'required|string',
            'email' => 'required|string',
            'password'=>'required'
        ],
        [
            'name.required' => 'nama wajib diisi',
            'email.required' => 'email wajib diisi',
            'password.required'=> 'password wajib diisi'

            
        ]
    );

        $updateUser = User::find($id);
        $updateUser->name = $request->name;
        $updateUser->email = $request->email;

        if ($request->password) {
            $updateUser->password = Hash::make($request->password);

    	}else{
    		$old_password = $request->old_password;
    	}
      
        $updateUser->update();
        return response()->json(['update data successfully'=>$updateUser,201]);
    }
}
