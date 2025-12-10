<?php

namespace App\Http\Controllers;
use App\Satuan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Alert;


class SatuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $satuan = DB::table('satuan')
                ->where('NA', 'N')
                ->get();
        return view('satuan.index',compact('satuan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("satuan.tambah");
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
            'idsatuan'   => 'required',
            'namasatuan'   => 'required'
        ]);

        $exist = DB::table('satuan')
                ->where('SatuanID','=', $request->idsatuan)
                ->first();
        if($exist){
            alert()->warning('Peringatan','ID Satuan sudah ada');
            return redirect('/satuan/create');
            
        }else{
            //dd($request->namasatuan);
            Satuan::create([
               

            'SatuanID'          => $request->idsatuan,
            'Nama'              => $request->namasatuan,
            'NA'                => 'N'

            ]);
            alert()->success('Sukses',$request->namasatuan.' berhasil diinput');
            return redirect('/satuan');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ab = DB::table('satuan')
                ->select('SatuanID', 'Nama')
                ->where('SatuanID','=', $id)
                ->get();
        return view('satuan.ubah', compact('ab'));
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
        Satuan::where('SatuanID', $id)
                  ->update([
                    'Nama'  => $request->namasatuan
                  ]);
                  alert()->success('Sukses','Data berhasil diedit');
                  return redirect('/satuan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Satuan::where('SatuanID', $id)
                  ->update([
                    'NA'  => 'Y'
                  ]);
                  alert()->message('Sukses','Data berhasil dihapus');
                  return redirect('/satuan');
    }
}
