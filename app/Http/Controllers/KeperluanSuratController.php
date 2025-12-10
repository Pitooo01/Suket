<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\KeperluanSurat;
use Illuminate\Support\Facades\DB;
use Alert;
use DataTables;

class KeperluanSuratController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('keperluansurat.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()

    {
        return view("keperluansurat.tambah");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        KeperluanSurat::create([
            'Nama'                     => $request->nama
        ]);
        return response()->json(['success' => "simpan data berhasil"]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $kode = decrypt($id);
        $perlu = DB::table('keperluan_surat')
            ->select(
                'KeperluanSuratID',
                'Nama',
                'NA'
            )
            ->where('KeperluanSuratID', $kode)
            ->get();

        //return view('keperluansurat.ubah', compact('perlu'));
        return view('keperluansurat.ubah', ['perlu' => $perlu]);
    }


    public function tampilkeperluan()
    {
        $hasil = DB::table('keperluan_surat')
            ->select(
                'KeperluanSuratID',
                'Nama',
                'NA'
            )
            ->where('NA', 'N')

            ->get();
        //dd($hasil);


        //dd($test);
        return DataTables::of($hasil)
            ->addIndexColumn()
            ->addColumn('action', function ($reg) {

                $button = '<a href="./keperluan/edit/' . encrypt($reg->KeperluanSuratID) . '" class="w3-button w3-cyan">Edit</a>';
                $button .= "    ";
                $button .= '<a href="#" class="w3-button w3-red" onclick=\'fn_hapus_keperluan("' . encrypt($reg->KeperluanSuratID) . '")\'>Delete</a>';
                return $button;
            })
            ->make(true);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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

    public function ubahkeperluan(Request $request)
    {

        KeperluanSurat::where('KeperluanSuratID', $request->keperluanid)
            ->update([
                'Nama'                     => $request->nama
            ]);
        return response()->json(['success' => "Edit data berhasil"]);
    }

    public function hapuskeperluan(Request $request)
    {
        //dd($request->noreg);
        $kode = decrypt($request->noreg);
        KeperluanSurat::where('KeperluanSuratID', $kode)
            ->update([
                'NA'  => 'Y'
            ]);

        return response()->json(['success' => "Hapus data berhasil"]);
    }
}
