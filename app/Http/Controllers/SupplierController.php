<?php

namespace App\Http\Controllers;
use App\Supplier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Alert;
use DataTables;


class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('supplier.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('supplier.tambah');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        Supplier::create([
            'Nama'                     => $request->nama,
            'Alamat'                   => $request->alamat,
            'Notelp'                   => $request->notelp,
            'PenanggungJawab'          => $request->penanggungjawab,
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
        $ab = DB::table('supplier')
        ->select('ID',
                'SupplierID',
                'Nama',
                'Alamat',
                'Notelp',
                'PenanggungJawab',
                'NA')
        ->where('SupplierID',$id)
        ->get();

        return view('supplier.ubah',compact('ab'));
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


    public function hapussupplier(Request $request)
    {
        Supplier::where('SupplierID', $request->noreg)
                          ->update([
                            'NA'  => 'Y'
                          ]);
                          
                          return response()->json(['success'=>"Hapus data berhasil"]);
    }

    public function tampilsupplier()
    {
        $hasil = DB::table('supplier')
                ->select('ID',
                        'SupplierID',
                        'Nama',
                        'Alamat',
                        'Notelp',
                        'PenanggungJawab',
                        'NA')
                ->where('NA','N')
                
                ->get();
                //dd($hasil);

                
                //dd($test);
                return DataTables::of($hasil)
                ->addIndexColumn()
                ->addColumn('action', function($reg){
                
                    $button = '<a href="./supplier/edit/'.$reg->SupplierID.'" class="w3-button w3-cyan">Edit</a>';
                    $button .="    ";
                    $button .= '<a href="#" class="w3-button w3-red" onclick=\'fn_hapus_supplier("'.$reg->SupplierID.'")\'>Delete</a>';
                    return $button;
                })
                ->make(true);
    }

    public function ubahsupplier(Request $request)
      {
        Supplier::where('SupplierID', $request->supplierid)
        ->update([
            'Nama'                     => $request->nama,
            'Alamat'                   => $request->alamat,
            'Notelp'                   => $request->notelp,
            'PenanggungJawab'          => $request->penanggungjawab,
        ]);
        return response()->json(['success'=>"edit data berhasil"]);
      }
}
