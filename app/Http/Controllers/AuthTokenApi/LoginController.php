<?php

namespace App\Http\Controllers\AuthTokenApi;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login(Request $request){
        $login = $request->validate([
            'email'=> 'required|string',
            'password'=> 'required|string'
        ]);

        if( !Auth::attempt($login)){
            return response(['response'=>false,'message'=>'login credential invalid']);
        }
        else{
            $pass = Auth::user()->password;
            $accessToken = Auth::User()->createToken('authToken')->accessToken;
            return response(['response'=>true,'user'=>Auth::User(),'userPass'=>$pass,'accessToken'=>$accessToken]);
        }
       
    }

}
