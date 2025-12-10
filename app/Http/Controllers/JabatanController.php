<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;


class JabatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jabatan = DB::table('jabatan')
            ->select('ID', 'NamaJabatan')
            ->where('NA', 'N')
            ->get();
        return view('jabatan.index', ['jabatans' => $jabatan]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('jabatan.tambah');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->namajabatan);
        $ambil = DB::table('jabatan')->insert([
            'NamaJabatan' => strtoupper($request->namajabatan),
            'created_at' =>  NOW(),
            'updated_at' =>  NOW(),
            'NA' =>  'N'
        ]);
        return response()->json(['success' => "Simpan data berhasil", 'judul' => "success", 'type' => "success"]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $decrypted = Crypt::decrypt($id);
        // dd($decrypted);

        $jabatan = DB::table('jabatan')
            ->select('ID', 'NamaJabatan')
            ->where('ID', $decrypted)
            ->where('NA', 'N')
            ->get();

        return view("jabatan.ubah", compact('jabatan'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $kode = decrypt($request->idjabatan);
        DB::table('jabatan')
            ->where('ID', $kode)
            ->update(['NamaJabatan' => strtoupper($request->namajabatan)]);

        return response()->json(['success' => "Ubah data berhasil", 'judul' => "success", 'type' => "success"]);
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
