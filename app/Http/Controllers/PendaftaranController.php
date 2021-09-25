<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Event;
use Illuminate\Support\Facades\Auth;

class PendaftaranController extends Controller
{
    public function index()
    {
        $events = DB::table('events')
        ->select('*')
        ->get();

    return view('welcome',compact('events'));
    }

    public function dashboard()
    {
        $registrants = DB::table('registrants')
        ->select('*')
        ->get();

        $role = DB::table('model_has_roles')
        ->join('roles', 'model_has_roles.role_id', '=', 'roles.id')
        ->select('roles.name')
        ->where('model_has_roles.model_id', '=', Auth::id())
        ->first();
        
    return view('content.pendaftaran.index',compact('registrants' , 'role'));
    }


    public function daftar($id)
    {
        $events = Event::find($id);
            
        return view('content.pendaftaran.registrasi', compact('events'));
    }

    public function store(Request $request)
    {
        $request->validate([
            "name" =>'required',
            "email" => 'required',
            "tanggallahir" => 'required',
            "alamat" => 'required'
        ]);

        $insertQ = DB::table('registrants')->insert([
            "idevent" => $request["idevent"],
            "nama" => $request["name"],
            "email" => $request["email"],
            "tanggallahir" => $request["tanggallahir"],
            "alamat" => $request["alamat"],
        ]);


        return redirect('/')->with('toast_success','Berhasil registrasi');
    
    }
}
