<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;
use Illuminate\Support\Facades\DB;
use Alert;
use DataTables;

class BarangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('barang.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()

    {
        $brg= DB::table('satuan')
                ->select('SatuanID', 'Nama')
                ->where('NA','N')
                 ->get();
                 //dd($brg);
        return view("barang.tambah", compact('brg'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Barang::create([
            'Nama'                     => $request->nama,
            'Satuan'                   => $request->satuan,
            'HargaBeli'                => $request->hargabeli,
            'HargaJual'                => $request->hargajual
        ]);
        return response()->json(['success'=>"simpan data berhasil"]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $hasil = DB::table('barang')
                ->select('BarangID',
                        'Nama',
                        'Satuan',
                        'Jumlah',
                        'HargaBeli',
                        'MarkUP',
                        'HargaJual',
                        'NA')
                ->where('BarangID',$id)
                ->get();

        $sat = DB::table('satuan')
                ->select('SatuanID', 'Nama')
                ->where('NA','N')
                 ->get();

                 //dd($hasil, $sat);

        return view('barang.ubah', compact('hasil','sat'));
    }


    public function tampilbarang()
    {
        $hasil = DB::table('barang')
                ->select('BarangID',
                        'Nama',
                        'Satuan',
                        'Jumlah',
                        'HargaBeli',
                        'MarkUP',
                        'HargaJual',
                        'NA')
                ->where('NA','N')
                
                ->get();
                //dd($hasil);

                
                //dd($test);
                return DataTables::of($hasil)
                ->addIndexColumn()
                ->addColumn('action', function($reg){
                
                    $button = '<a href="./barang/edit/'.$reg->BarangID.'" class="w3-button w3-cyan">Edit</a>';
                    $button .="    ";
                    $button .= '<a href="#" class="w3-button w3-red" onclick=\'fn_hapus_barang("'.$reg->BarangID.'")\'>Delete</a>';
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

    public function ubahbarang(Request $request)
      {
        Barang::where('BarangID', $request->barangid)
        ->update([
            'Nama'                     => $request->nama,
            'Satuan'                   => $request->satuan,
            'HargaBeli'                => $request->hargabeli,
            'HargaJual'                => $request->hargajual
        ]);
        return response()->json(['success'=>"Edit data berhasil"]);
      }

      public function hapusbarang(Request $request)
      {
          Barang::where('BarangID', $request->noreg)
                            ->update([
                              'NA'  => 'Y'
                            ]);
                            
                            return response()->json(['success'=>"Hapus data berhasil"]);
      }
}
