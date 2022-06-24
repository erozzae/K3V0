<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\support\facades\Hash;
use auth;

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

    public function findUserById($id){
        $user = User::find($id);
        if(is_null($user)){
            return response()->json(['message'=>'data not found',401]);
        }
        else{
            return response()->json(['userById'=> $user,201]);
        }
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

    public function update(Request $request, $id){
        $this->validate($request,[
            'name' => 'required|string',
            'email' => 'required|string',
        ],
        [
            'name.required' => "nama wajib diisi",
            'email.required' => "email wajib diisi",
            
        ]
    );

        $updateUser = User::find($id);
        $updateUser->name = $request->name;
        $updateUser->email = $request->email;
        $updateUser->level = $request->level;
        $updateUser->update();
        return response()->json(['update data successfully'=>$updateUser,201]);
    }

    public function delete($id)
    {
        $deleteUser = User::find($id);
        $deleteUser->delete();
        return response()->json(['delete data successfully'=>$deleteUser,201]);
    }
}
