<?php

namespace App\Http\Controllers;

use App\Level;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Alert;


class LevelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $level = DB::table('role')
                ->where('NA', 'N')
                ->get();
        return view('level.index', ['levels' => $level]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("level.tambah");
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
            'idlevel'     => 'required',
            'namalevel'   => 'required'
        ]);

        $exist = DB::table('role')
                ->where('role_id','=', $request->idlevel)
                ->first();
        if($exist){
            alert()->warning('Peringatan','ID sudah ada');
            return redirect('/level/create');
            
        }else{
            
            Level::create([

            'role_id'          => $request->idlevel,
            'nama'             => $request->namalevel,
            'remember_token'   => str_random(60)

            ]);
            alert()->success('Sukses',$request->nama.' berhasil diinput');
            return redirect('/level');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function show($level)
    {
        //dd($level);
        $ab = DB::table('role')
                ->select('role_id', 'nama', 'remember_token')
                ->where('remember_token','=', $level)
                ->get();
                
        return view('level.ubah', ['ab' => $ab]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function edit(Level $level)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        Level::where('remember_token', $id)
                  ->update([
                    'nama'  => $request->nama
                  ]);
                  alert()->success('Sukses','Data berhasil diedit');
                  return redirect('/level');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function destroy($level)
    {
        Level::where('remember_token', $level)
                  ->update([
                    'NA'  => 'Y'
                  ]);
                  alert()->message('Sukses','Data berhasil dihapus');
                  return redirect('/level');
    }
}
