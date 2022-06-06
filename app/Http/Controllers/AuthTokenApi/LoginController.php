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
            return response(['message'=>'login credential invalid']);
        }
        $accessToken = Auth::User()->createToken('authToken')->accessToken;
        return response(['user'=>Auth::User(),'accessToken'=>$accessToken]);
    }
}
