<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;


class NamaBankController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $namabank = DB::table('nama_bank')
            ->select('ID', 'NamaBank')
            ->where('NA', 'N')
            ->get();
        return view('namabank.index', ['namabanks' => $namabank]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('namabank.tambah');
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
        $ambil = DB::table('nama_bank')->insert([
            'NamaBank' => $request->namabank,
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

        $namabank = DB::table('nama_bank')
            ->select('ID', 'NamaBank')
            ->where('ID', $decrypted)
            ->where('NA', 'N')
            ->get();

        return view("namabank.ubah", compact('namabank'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $kode = decrypt($request->idbank);
        DB::table('nama_bank')
            ->where('ID', $kode)
            ->update(['NamaBank' => $request->namabank]);

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
