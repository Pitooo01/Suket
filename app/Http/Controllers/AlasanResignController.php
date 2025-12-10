<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AlasanResign;
use Illuminate\Support\Facades\DB;
use Alert;
use DataTables;

class AlasanResignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('alasanresign.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()

    {
        return view("alasanresign.tambah");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        AlasanResign::create([
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
        $hasil = DB::table('alasan_resign')
            ->select(
                'AlasanID',
                'Nama',
                'NA'
            )
            ->where('AlasanID', $kode)
            ->get();


        return view('alasanresign.ubah', compact('hasil'));
    }


    public function tampilalasan()
    {
        $hasil = DB::table('alasan_resign')
            ->select(
                'AlasanID',
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

                $button = '<a href="./alasan/edit/' . encrypt($reg->AlasanID) . '" class="w3-button w3-cyan">Edit</a>';
                $button .= "    ";
                $button .= '<a href="#" class="w3-button w3-red" onclick=\'fn_hapus_alasan("' . encrypt($reg->AlasanID) . '")\'>Delete</a>';
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

    public function ubahalasan(Request $request)
    {
        AlasanResign::where('AlasanID', $request->alasanid)
            ->update([
                'Nama'                     => $request->nama
            ]);
        return response()->json(['success' => "Edit data berhasil"]);
    }

    public function hapusalasan(Request $request)
    {
        $kode = decrypt($request->noreg);
        AlasanResign::where('AlasanID', $kode)
            ->update([
                'NA'  => 'Y'
            ]);

        return response()->json(['success' => "Hapus data berhasil"]);
    }
}
