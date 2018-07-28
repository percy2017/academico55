<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class SecurityController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        return view('security.index');
    }

    // public function register(Request $datos)
    // {
    //     $user = App\User::create([
    //         'name' => $datos->name,
    //         'email' => $datos->email,
    //         'password' =>  bcrypt($datos->password)
    //     ]);
    //     Auth::login($user, true);
    //     return redirect('/admin/profile')->with(['message' => "Bienvenido al sistema, ".$user->name, 'alert-type' => 'info']);
    
    // }
}
