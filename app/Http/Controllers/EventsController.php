<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\Event;

class EventsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $events = DB::table('events')
        ->select('*')
        ->get();

        $role = DB::table('model_has_roles')
        ->join('roles', 'model_has_roles.role_id', '=', 'roles.id')
        ->select('roles.name')
        ->where('model_has_roles.model_id', '=', Auth::id())
        ->first();
        
    return view('content.event.index',compact('events' , 'role'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $role = DB::table('model_has_roles')
        ->join('roles', 'model_has_roles.role_id', '=', 'roles.id')
        ->select('roles.name')
        ->where('model_has_roles.model_id', '=', Auth::id())
        ->first();

    return view('content.event.create',compact('role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            "name" =>'required',
            "tanggalevent" => 'required|after_or_equal:today',
            "informasi" => 'required'
        ]);

        $insertQ = DB::table('events')->insert([
            "nama" => $request["name"],
            "tanggal" => $request["tanggalevent"],
            "informasi" => $request["informasi"],
        ]);


        return redirect('/events')->with('toast_success','Data Event Berhasil ditambahkan');
    
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $event = Event::find($id);
            
        $role = DB::table('model_has_roles')
            ->join('roles', 'model_has_roles.role_id', '=', 'roles.id')
            ->select('roles.name')
            ->where('model_has_roles.model_id', '=', Auth::id())
            ->first();

        return view('content.event.edit', compact('event','role'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            "name" =>'required',
            "tanggalevent" => 'required|after_or_equal:today',
            "informasi" => 'required'
        ]);


        $updateQ = DB::table('events')
        ->where('id',$id)
        ->update([
            "nama" => $request["name"],
            "tanggal" => $request["tanggalevent"],
            "informasi" => $request["informasi"],
        ]);

        return back()->with('toast_success','Data Event Berhasil diubah');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $event = Event::find($id);
        if ($event) {
            $event->delete();
        }
        return back()->with('toast_success','Data Event Berhasil dihapus');
    }
}
