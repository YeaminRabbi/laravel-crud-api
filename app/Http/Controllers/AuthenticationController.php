<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
// use Spatie\Permission\Models\Role;
// use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthenticationController extends Controller
{

   
    function account_create(Request $request){
        
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password =  Hash::make($request->password);
        $user->status =  1;
        $user->address =  $request->address ?? null;
        $user->phone =  $request->phone ?? null;
        $user->gender =  $request->gender ?? null;
        $user->save();
     
        $user->assignRole('user');

        return response()->json([
            'message' => 'User created successfully',
            'status' => 'success',
            'user' => $user
        ]);

    }


    function LOGIN(Request $req)
    {

        $validator = Validator::make($req->all(), [
            'email' => 'required',
            'password' => 'required'
        ], [
            'email.required' => 'Email field is missing',
            'password.required' => 'Password field is missing'
        ]);
        
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }
        
        $remember_me = $req->has('remember_me') ? true : false;        

        if (Auth::attempt(array('email' => $req->email, 'password' => $req->password), $remember_me)) {

            if(Auth::user()->status != 1)
            {
                Auth::logout();
                return response()->json([
                    'message' => 'Your account is not active',
                ]);
            }else{

                $user = Auth::user();
                $token = $user->createToken('token-name')->plainTextToken;
                // return response()->json([
                //     'message' => 'Login successfully',
                //     'token' => $token,
                //     'role' => $user->getRoleNames(),
                //     'user' => Auth::user()
                // ]);
                return response()->json([
                    'message' => 'Login successfully',
                    'token' => $token,
                    'access'=> 1
                ]);

                
            }

        } else {

            return response()->json([
                'message' => 'These credentials does not match with our records',
            ]);

        }
    }



    function LOGOUT()
    {
        if (Auth::check()) {
            // Revoke the user's token (for Laravel Passport)
            $user = Auth::user();
            $user->token()->revoke();
        }
    
        Auth::logout();
    
        return response()->json([
            'message' => 'Logout successfully',
        ]);
    }
}
