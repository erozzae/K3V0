<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\support\facades\Hash;

class UserController extends Controller
{
    public function __construct()
    {
       $this->middleware(['auth:api','admin']);
    }

    public function getAllUser(){  
        $allUser = User::orderBy('updated_at','asc')->get();
        $count = User::all()->count();
        return response()->json(['allUser'=>$allUser,
        'totalUser'=>$count]);
       
    }

    public function store(Request $request){
        $this->validate($request,[
            'name' => 'required|string',
            'email' => 'required|string',
            'password' => 'required',
        ],
        [
            'name.required' => "nama wajib diisi",
            'email.required' => "email wajib diisi",
            'password.required' => "password wajib diisi",
            
        ]
    );

        $addUser = new User;
        $addUser->name = $request->name;
        $addUser->email = $request->email;
        $addUser->password = Hash::make($request['password']);
        $addUser->level = $request->level;
        $addUser->save();
        return response()->json(['insert data successfully'=>$addUser,201]);
    }

    public function delete($id)
    {
        $deleteUser = User::find($id);
        $deleteUser->delete();
        return response()->json(['delete data successfully'=>$deleteUser,201]);
    }
}
