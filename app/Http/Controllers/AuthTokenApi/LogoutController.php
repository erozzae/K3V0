<?php

namespace App\Http\Controllers\AuthTokenApi;


use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Laravel\Passport\RefreshToken;
use Laravel\Passport\Token;
use User;



class LogoutController extends Controller
{
   public function __construct()
   {
      $this->middleware('auth:api');
   }

  

   public function logout(Request $request){
      $user = Auth::User()->token();
      $user->revoke();

      return response(['message' => 'You have been successfully logged out.'], 200);
   }
}
