<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SuratKeteranganBekerja;
use Illuminate\Support\Facades\DB;
use Alert;
use DataTables;
use Carbon\Carbon;
use Illuminate\Support\Str;
use PDF;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Mail;



class SuratRekomendasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('suratrekomendasi.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $keperluan_surat = DB::table('keperluan_surat')
        //     ->select('KeperluanSuratID', 'Nama')
        //     ->where('NA', 'N')
        //     ->get();
        return view('suratrekomendasi.tambah');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->sekarang);
        $nomorsurat = $request->nosurat . '/RSAB-SDM/' . $request->bulan . '.' . $request->tahun;

        $exist = DB::table('surat_rekomendasi_abs')
            ->where('SuketRekomendasiID', '=', $nomorsurat)
            ->first();
        //dd($exist);

        if ($exist) {
            return response()->json(['success' => "No. Surat Sudah Ada", 'judul' => "error", 'type' => "error"]);
        } else {

            if ($request->sekarang == '0') {
                $sekarang = "N";
                $akhir = $request->akhirkerja;
            } else {
                $sekarang = "Y";
                $akhir = $request->akhirkerja;
            }

            $ambil = DB::table('surat_rekomendasi_abs')->insert([
                'SuketRekomendasiID' => $nomorsurat,
                'SEO' => Str::random(60) . date("YmdHis"),
                'NIK' => $request->nik,
                'NamaKarywan' =>  ucwords(strtolower($request->nama)),
                'TempatLahir' =>  ucwords(strtolower($request->tempatlahir)),
                'TanggalLahir' =>  $request->tanggallahir,
                'Bagian' =>  ucwords(strtolower($request->bagian)),
                'Jabatan' => ucwords(strtolower($request->jabatan)),
                'JenisKaryawanID' =>  $request->status,
                'Awal'  =>  $request->mulaikerja,
                'Akhir' =>  $akhir,
                'sekarang' =>  $sekarang,
                'JumlahPengajuan' =>  $request->pengajuan,
                'Email' =>  $request->email,
                'created_at' => NOW(),
                'updated_at'  => NOW()
            ]);




            return response()->json(['success' => "Simpan data berhasil", 'judul' => "success", 'type' => "success"]);
        }
    }

    public function tampildata(Request $request)
    {
        // $startDate = Carbon::parse($request->input('awal'))->endOfDay();
        // dd($startDate);
        $query = DB::table('surat_rekomendasi_abs')
            ->when($request->filled('awal') && $request->filled('akhir'), function ($query) use ($request) {
                $startDate = Carbon::parse($request->input('awal'))->startOfDay(); // Set time to 00:00:00
                $endDate = Carbon::parse($request->input('akhir'))->endOfDay();     // Set time to 23:59:59
                $query->whereBetween('created_at', [$startDate, $endDate]);
            })
            ->when($request->filled('nik'), function ($query) use ($request) {
                $query->where('NIK', '=', $request->input('nik'));
            })
            ->when($request->filled('nama'), function ($query) use ($request) {
                $query->where('NamaKarywan', 'LIKE', '%' . $request->input('nama') . '%');
            })
            ->when($request->filled('status'), function ($query) use ($request) {
                $query->where('Status', '=', $request->input('status'));
            })
            ->get();

        $html = '';
        foreach ($query as $queryx) {

            // $keperluansurat = DB::table('keperluan_surat')
            //     ->select('Nama')
            //     ->where('KeperluanSuratID', $queryx->JenisKeperluanSuratID)
            //     ->first();

            if ($queryx->Status == '0') {
                $status = '<p style="background-color: #BDB76B;">Email Verif Belum Dikirim Ke Manager SDM</p>';
                $kirimemail = '<a href="./rekomendasi/kirimemailkemanager/' . $queryx->SEO . '" target="_blank" id="cetak" class="btn btn-danger btn-sm text-white">Kirim Email Manager</a>';
                $cetak = '';
            } else if ($queryx->Status == '1') {
                $status = '<p style="background-color: #FFFACD;">Menunggu Disetujui Manager</p>';
                $kirimemail = '';
                $cetak = '';
            } else if ($queryx->Status == '2') {
                $status = '<p style="background-color: #90EE90;">Surat Keterangan Disetujui Manager</p>';
                $kirimemail = '<a href="./rekomendasi/kirimulangkekaryawan/' . $queryx->SEO . '" target="_blank" id="cetak" class="btn btn-primary btn-sm text-white"><i class="fa fa-envelope" aria-hidden="true"></i></a>';

                $cetak = '<a href="./rekomendasi/cetak/' . $queryx->SEO . '" target="_blank" id="cetak" class="btn btn-success btn-sm text-white"><i class="fa fa-print" aria-hidden="true"></i></a>';
            } else {
                $status = '<p style="background-color: #CD5C5C;font-size: 14px; color: white;">Pengajuan Surat Ditolak</p>';
                $kirimemail = '';
                $cetak = '';
            }
            // $datekirim = $queryx->TanggalKirim ? Carbon::parse($queryx->TanggalKirim) : NULL;
            // $datesetujui = Carbon::parse($queryx->TanggalSetujui);


            $dateStringkirim = strtotime($queryx->TanggalKirim);
            $dateStringsetujui = strtotime($queryx->TanggalSetujui);



            $formattedDatekirim =  $dateStringkirim ? date('d-m-Y H:i:s', $dateStringkirim) : 'Belum Dikirim';

            $formattedDatesetujui = $dateStringsetujui ? date('d-m-Y H:i:s', $dateStringsetujui) : 'Belum Disetujui'; // Example format

            $html  .= '<tr>';
            $html .= '<td>' . $queryx->SuketRekomendasiID . '</td>';
            $html .= '<td>' . $queryx->NIK . '</td>';
            $html .= '<td>' . $queryx->NamaKarywan . '</td>';
            $html .= '<td>' . $queryx->Bagian . '/' . $queryx->Jabatan . '</td>';
            $html .= '<td>' . $queryx->awal . '</td>';
            $html .= '<td>' . 'Rp. ' . number_format($queryx->JumlahPengajuan, 2, ',', '.') . '</td>';
            $html .= '<td>' . $queryx->Email . '</td>';
            $html .= '<td>' . $status . '</td>';
            $html .= '<td>' . $formattedDatekirim . '</td>';
            $html .= '<td>' . $formattedDatesetujui . '</td>';
            $html .= '<td>' . $kirimemail . ' ' . $cetak . '</td>';
            $html  .= '<tr>';
        }
        return response()->json(['html' => $html]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {}


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

    public function cetakrekomendasi(Request $request)
    {
        $cetakrekomendasi = DB::table('surat_rekomendasi_abs')
            ->where('SEO', $request->id)
            ->get();

        $jeniskaryawan = DB::table('jenis_karyawan')
            ->select(
                'JenisKaryawanID',
                'Nama'
            )
            ->where('JenisKaryawanID', $cetakrekomendasi[0]->JenisKaryawanID)
            ->get();

        $sdm = DB::table('manager_sdm')
            ->select(
                'Nama',
                'Status'
            )
            ->where('NA', 'N')
            ->get();

        $tgllahir = Carbon::parse($cetakrekomendasi[0]->TanggalLahir)->isoFormat('D MMMM Y');
        $tglcetak = Carbon::now()->isoFormat('D MMMM Y');
        $tglmasuk = Carbon::parse($cetakrekomendasi[0]->awal)->isoFormat('D MMMM Y');

        if ($cetakrekomendasi[0]->sekarang == 'N') {
            $tglkeluar = Carbon::parse($cetakrekomendasi[0]->akhir)->isoFormat('D MMMM Y');
        } else {
            $tglkeluar = "Sekarang";
        }


        $pdf = PDF::loadView('suratrekomendasi.cetakrekomendasi', compact(
            'cetakrekomendasi',
            'jeniskaryawan',
            'sdm',
            'tgllahir',
            'tglcetak',
            'tglmasuk',
            'tglkeluar'
        ));
        return $pdf->stream($cetakrekomendasi[0]->NIK . '-' . $cetakrekomendasi[0]->NamaKarywan  . '.pdf');
    }

    public function emailsuratrekomendasi(Request $request)
    {

        $cetakrekomendasi = DB::table('surat_rekomendasi_abs')
            ->where('SEO', $request->id)
            ->get();
        //dd($header);

        $ip = DB::table('ip_publik')
            ->select(
                'IP'
            )
            ->first();

        if ($cetakrekomendasi[0]->Setujui == 'Y') {
            alert()->success('Error', 'Suket Sudah Pernah Disetujui');

            return view('email.alert');
        } else if ($cetakrekomendasi[0]->Setujui == 'B') {
            alert()->success('Error', 'Suket Sudah Pernah Ditolak');

            return view('email.alert');
        } else {
            $data["email"] = $cetakrekomendasi[0]->Email;
            $data["title"] = "From SDM RS. Awal Bros Ujung Batu";
            $data["body"] = "This is Demo";

            DB::table('surat_rekomendasi_abs')
                ->where('SEO', $request->id) // Kondisi
                ->update([
                    'Setujui' => 'Y',
                    'Status' => '2',
                    'TanggalSetujui' => NOW()
                ]);

            Mail::send('email.suketrekomendasi', array('header' => $cetakrekomendasi, 'ip' => $ip), function ($message) use ($data) {
                $message->to($data["email"], $data["email"])
                    ->subject($data["title"]);
                //->attachData($pdf->output(), "draft.pdf");
            });

            alert()->success('Sukses', 'Surat Keterangan Berhasil Dikirim');

            return view('email.alert');
        }
    }

    public function kirimemailkemanager(Request $request)
    {
        // //kirim email ke manager untuk verifikasi
        // //$data["email"] = $emailmanager[0]->Email;
        $cetakrekomendasi = DB::table('surat_rekomendasi_abs')
            ->where('SEO', $request->id)
            ->first();

        $sdm = DB::table('manager_sdm')
            ->select(
                'Nama',
                'Status',
                'Email'
            )
            ->where('NA', 'N')
            ->first();

        $ip = DB::table('ip_publik')
            ->select(
                'IP'
            )
            ->first();

        //dd($cetakketerangankerja, $keperluansurat);
        //email manager sdm
        $data["email"] = $sdm->Email;

        $data["title"] = "SDM RS. Awal Bros Sudirman - Verifikasi Surat Keterangan";

        $data["body"] = "This is Demo";

        DB::table('surat_rekomendasi_abs')
            ->where('SEO', $request->id) // Kondisi
            ->update(['Status' => '1', 'TanggalKirim' => NOW()]);

        if (isset($data['email'], $data['title'])) {
            Mail::send(
                'email.emailmanagerrekomendasiabs',
                [
                    'header' => $cetakrekomendasi,
                    'sdm' => $sdm,
                    'ip' => $ip
                ],
                function ($message) use ($data) {
                    $message->to($data["email"], $data["email"])
                        ->subject($data["title"]);
                    // ->attachData($pdf->output(), "draft.pdf");
                }
            );
            alert()->success('Sukses', 'Surat Keterangan Berhasil Dikirim');
            return view('email.alert');
        } else {
            // Handle case where email or title is missing
            return response()->json(['error' => 'Email or title is missing'], 400);
        }
    }

    public function kirimulangkekaryawan(Request $request)
    {
        $cetakrekomendasi = DB::table('surat_rekomendasi_abs')
            ->where('SEO', $request->id)
            ->get();
        $ip = DB::table('ip_publik')
            ->select(
                'IP'
            )
            ->first();
        //dd($header);

        $data["email"] = $cetakrekomendasi[0]->Email;
        $data["title"] = "From SDM RS. Awal Bros Sudirman";
        $data["body"] = "This is Demo";



        Mail::send('email.suketrekomendasi', array('header' => $cetakrekomendasi, 'ip' => $ip), function ($message) use ($data) {
            $message->to($data["email"], $data["email"])
                ->subject($data["title"]);
            //->attachData($pdf->output(), "draft.pdf");
        });

        alert()->success('Sukses', 'Surat Keterangan Berhasil Dikirim');

        return view('email.alert');
    }
    public function batalkan(Request $request)
    {

        $cetakrekomendasi = DB::table('surat_rekomendasi_abs')
            ->where('SEO', $request->id)
            ->get();
        //dd($header);

        if ($cetakrekomendasi[0]->Setujui == 'Y') {
            alert()->success('Error', 'Suket Sudah Pernah Disetujui');

            return view('email.alert');
        } else if ($cetakrekomendasi[0]->Setujui == 'B') {
            alert()->success('Error', 'Suket Sudah Pernah Ditolak');

            return view('email.alert');
        } else {
            DB::table('surat_rekomendasi_abs')
                ->where('SEO', $request->id) // Kondisi
                ->update(['Setujui' => 'B', 'Status' => '-1']);
            alert()->success('Sukses', 'Pengajuan Surat Rekomendasi Ditolak');
            return view('email.alert');
        }
    }
}
