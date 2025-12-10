<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SuratPengalamanKerja;
use App\LogKirimPengalamanKerja;
use Illuminate\Support\Facades\DB;
use Alert;
use DataTables;
use PDF;
use Carbon\Carbon;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Mail;

class SuratPengalamanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('suratpengalamankerja.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()

    {
        $jk = DB::table('jenis_karyawan')
            ->select('JenisKaryawanID', 'Nama')
            ->where('NA', 'N')
            ->get();
        //dd($jk);
        return view("suratpengalamankerja.tambah", compact('jk'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //echo($request->jabatanakhireng);
        //die;
        $nomorsurat = $request->nosurat . '/RSAB-BTM/SDM/' . $request->bulan . '.' . $request->tahun;

        $exist = DB::table('surat_pengalaman_kerja')
            ->where('SuketPengalamanID', '=', $nomorsurat)
            ->first();

        if ($exist) {
            return response()->json(['success' => "No. Surat Sudah Ada", 'judul' => "error", 'type' => "error"]);
        } else {

            SuratPengalamanKerja::create([
                'SuketPengalamanID'          => $nomorsurat,
                'NIK'                        => $request->nik,
                'NamaKaryawan'               => $request->nama,
                'Bagian'                     => $request->bagian,
                'TempatLahir'                => $request->tempatlahir,
                'TanggalLahir'               => $request->tgllahir,
                'JenisKaryawanID'            => $request->statuspegawai,
                'TanggalMasuk'               => $request->tglmulaikerja,
                'TanggalKeluar'              => $request->tglakhirkerja,
                'JabatanAkhir'               => $request->jabatanakhir,
                'jabatanakhireng'            => $request->jabatanakhireng,
                'NA'                         => 'N',
                'Email'                      => $request->email,
                'StatusID'                   => '0',
                'SEO'                        => str_random(60) . date('YmdHis')
            ]);
            return response()->json(['success' => "Simpan data berhasil", 'judul' => "success", 'type' => "success"]);
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
        $hasil = DB::table('surat_pengalaman_kerja')
            ->select(
                'ID',
                'SuketPengalamanID',
                'NamaKaryawan',
                'Bagian',
                'TempatLahir',
                'TanggalLahir',
                'JenisKaryawanID',
                'TanggalMasuk',
                'TanggalKeluar',
                'JabatanAkhir',
                'NA',
                'Email',
                'SEO'
            )
            ->where('SEO', $id)
            ->get();
        //dd($hasil);

        $jk = DB::table('jenis_karyawan')
            ->select(
                'JenisKaryawanID',
                'Nama'
            )
            ->where('NA', 'N')
            ->get();
        $qrcode = QrCode::size(200)->generate($hasil[0]->SuketPengalamanID);

        return view('suratpengalamankerja.ubah', compact('hasil', 'jk', 'qrcode'));
    }


    public function tampilpengalaman(Request $request)
    {
        $query = DB::table('surat_pengalaman_kerja')
            ->when($request->filled('awal') && $request->filled('akhir'), function ($query) use ($request) {
                $startDate = Carbon::parse($request->input('awal'))->startOfDay(); // Set time to 00:00:00
                $endDate = Carbon::parse($request->input('akhir'))->endOfDay();     // Set time to 23:59:59
                $query->whereBetween('created_at', [$startDate, $endDate]);
            })
            ->when($request->filled('nik'), function ($query) use ($request) {
                $query->where('NIK', '=', $request->input('nik'));
            })
            ->when($request->filled('nama'), function ($query) use ($request) {
                $query->where('NamaKaryawan', 'LIKE', '%' . $request->input('nama') . '%');
            })
            ->when($request->filled('status'), function ($query) use ($request) {
                $query->where('StatusID', '=', $request->input('status'));
            })
            ->get();

        $html = '';

        foreach ($query as $queryx) {

            if ($queryx->StatusID == '0') {
                $status = '<p style="background-color: #BDB76B;">Email Verif Belum Dikirim Ke Manager SDM</p>';
                $kirimemail = '<a href="./pengalamankerja/kirimemailkemanager/' . $queryx->SEO . '" target="_blank" id="cetak" class="btn btn-danger btn-sm text-white">Kirim Email Manager</a>';
                $cetak = '';
            } else if ($queryx->StatusID == '1') {
                $status = '<p style="background-color: #FFFACD;">Menunggu Disetujui Manager</p>';
                $kirimemail = '';
                $cetak = '';
            } else if ($queryx->StatusID == '2') {
                $status = '<p style="background-color: #90EE90;">Surat Keterangan Disetujui Manager</p>';
                $kirimemail = '<a href="./pengalaman/kirimulangkekaryawan/' . $queryx->SEO . '" target="_blank" id="cetak" class="btn btn-primary btn-sm text-white"><i class="fa fa-envelope" aria-hidden="true"></i></a>';

                $cetak = '<a href="./pengalamankerja/cetak/' . $queryx->SEO . '" target="_blank" id="cetak" class="btn btn-success btn-sm text-white"><i class="fa fa-print" aria-hidden="true"></i></a>';
            } else {
                $status = '<p style="background-color: #CD5C5C;font-size: 14px; color: white;">Pengajuan Surat Ditolak</p>';
                $kirimemail = '';
                $cetak = '';
            }

            $dateStringkirim = strtotime($queryx->TanggalKirim);
            $dateStringsetujui = strtotime($queryx->TanggalSetujui);

            $formattedDatekirim =  $dateStringkirim ? date('d-m-Y H:i:s', $dateStringkirim) : 'Belum Dikirim';

            $formattedDatesetujui = $dateStringsetujui ? date('d-m-Y H:i:s', $dateStringsetujui) : 'Belum Disetujui'; // Example format

            $tglmasuk = Carbon::parse($queryx->TanggalMasuk)->format('d-m-Y');
            $tglkeluar = Carbon::parse($queryx->TanggalKeluar)->format('d-m-Y');

            $html  .= '<tr>';
            $html .= '<td>' . $queryx->SuketPengalamanID . '</td>';
            $html .= '<td>' . $queryx->NamaKaryawan . '</td>';
            $html .= '<td>' . $queryx->Bagian . '</td>';
            $html .= '<td>' . $tglmasuk . '</td>';
            $html .= '<td>' . $tglkeluar . '</td>';
            $html .= '<td>' . $status . '</td>';
            $html .= '<td>' . $formattedDatekirim . '</td>';
            $html .= '<td>' . $formattedDatesetujui . '</td>';
            $html .= '<td>' . $kirimemail . ' ' . $cetak . '</td>';
            $html  .= '</tr>';
        }
        return response()->json(['html' => $html]);
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

    public function ubahpengalaman(Request $request)
    {
        //dd($request->statuspegawaiubah);
        SuratPengalamanKerja::where('SuketPengalamanID', $request->nomorsurat)
            ->update([
                'NamaKaryawan'               => $request->nama,
                'Bagian'                     => $request->bagian,
                'TempatLahir'                => $request->tempatlahir,
                'TanggalLahir'               => $request->tgllahir,
                'JenisKaryawanID'            => $request->statuspegawaiubah,
                'TanggalMasuk'               => $request->tglmulaikerja,
                'TanggalKeluar'              => $request->tglakhirkerja,
                'JabatanAkhir'               => $request->jabatanakhir,
                'Email'                      => $request->email
            ]);
        return response()->json(['success' => "Edit data berhasil"]);
    }

    public function hapusalasan(Request $request)
    {
        AlasanResign::where('AlasanID', $request->noreg)
            ->update([
                'NA'  => 'Y'
            ]);

        return response()->json(['success' => "Hapus data berhasil"]);
    }

    public function cetakpengalaman(Request $request)
    {

        $cetakpengalaman = DB::table('surat_pengalaman_kerja')
            ->select(
                'ID',
                'SuketPengalamanID',
                'NIK',
                'NamaKaryawan',
                'Bagian',
                'TempatLahir',
                'TanggalLahir',
                'JenisKaryawanID',
                'TanggalMasuk',
                'TanggalKeluar',
                'JabatanAkhir',
                'jabatanakhireng',
                'SEO'
            )
            ->where('SEO', $request->id)
            ->get();
        $sdm = DB::table('manager_sdm')
            ->select(
                'Nama',
                'Status'
            )
            ->where('NA', 'N')
            ->get();
        $jeniskaryawan = DB::table('jenis_karyawan')
            ->select(
                'JenisKaryawanID',
                'Nama'
            )
            ->where('JenisKaryawanID', $cetakpengalaman[0]->JenisKaryawanID)
            ->get();

        $ip = DB::table('ip_publik')
            ->select(
                'IP'
            )
            ->get();

        $tgllahir = Carbon::parse($cetakpengalaman[0]->TanggalLahir)->isoFormat('D MMMM Y');
        $awal = Carbon::parse($cetakpengalaman[0]->TanggalMasuk)->isoFormat('D MMMM Y');
        $akhir = Carbon::parse($cetakpengalaman[0]->TanggalKeluar)->isoFormat('D MMMM Y');
        $tglcetak = Carbon::now()->isoFormat('D MMMM Y');
        $tgllahir = Carbon::parse($cetakpengalaman[0]->TanggalLahir)->isoFormat('D MMMM Y');
        $awaleng = Carbon::parse($cetakpengalaman[0]->TanggalMasuk)->format('M d, Y');
        $akhireng = Carbon::parse($cetakpengalaman[0]->TanggalKeluar)->format('M d, Y');

        $pdf = PDF::loadView('suratpengalamankerja.cetakpengalaman', compact(
            'cetakpengalaman',
            'sdm',
            'tgllahir',
            'jeniskaryawan',
            'awal',
            'akhir',
            'tglcetak',
            'tgllahir',
            'awaleng',
            'akhireng',
            'ip'
        ));
        return $pdf->stream($cetakpengalaman[0]->NIK . '-' . $cetakpengalaman[0]->NamaKaryawan  . '.pdf');
    }

    public function valid(Request $request)
    {
        $cetakpengalaman = DB::table('surat_pengalaman_kerja')
            ->select(
                'ID',
                'SuketPengalamanID',
                'NamaKaryawan',
                'Bagian',
                'TempatLahir',
                'TanggalLahir',
                'JenisKaryawanID',
                'TanggalMasuk',
                'TanggalKeluar',
                'JabatanAkhir',
                'jabatanakhireng',
                'SEO'
            )
            ->where('SEO', $request->id)
            ->get();
        //dd($cetakpengalaman);

        if ($cetakpengalaman) {
            return view('suratpengalamankerja.valid', compact('cetakpengalaman'));
        } else {
            alert()->warning('Peringatan', 'ID tidak ada');
        }
    }


    public function kirim_email(Request $request)
    {

        $cetakpengalaman = DB::table('surat_pengalaman_kerja')
            ->select(
                'ID',
                'SuketPengalamanID',
                'NamaKaryawan',
                'Bagian',
                'TempatLahir',
                'TanggalLahir',
                'JenisKaryawanID',
                'TanggalMasuk',
                'TanggalKeluar',
                'JabatanAkhir',
                'jabatanakhireng',
                'SEO'
            )
            ->where('SEO', $request->id)
            ->get();
        $sdm = DB::table('manager_sdm')
            ->select(
                'Nama',
                'Status'
            )
            ->where('NA', 'N')
            ->get();
        $jeniskaryawan = DB::table('jenis_karyawan')
            ->select(
                'JenisKaryawanID',
                'Nama'
            )
            ->where('JenisKaryawanID', $cetakpengalaman[0]->JenisKaryawanID)
            ->get();

        $tgllahir = Carbon::parse($cetakpengalaman[0]->TanggalLahir)->isoFormat('D MMMM Y');
        $awal = Carbon::parse($cetakpengalaman[0]->TanggalMasuk)->isoFormat('D MMMM Y');
        $akhir = Carbon::parse($cetakpengalaman[0]->TanggalKeluar)->isoFormat('D MMMM Y');
        $tglcetak = Carbon::now()->isoFormat('D MMMM Y');
        $tgllahir = Carbon::parse($cetakpengalaman[0]->TanggalLahir)->isoFormat('D MMMM Y');
        $awaleng = Carbon::parse($cetakpengalaman[0]->TanggalMasuk)->format('M d, Y');
        $akhireng = Carbon::parse($cetakpengalaman[0]->TanggalKeluar)->format('M d, Y');

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
            ->get();

        //$data["email"] = $emailmanager[0]->Email;
        $data["email"] = $sdm->Email;

        $data["title"] = "From SDM RS. Awal Bros Batam";

        $data["body"] = "This is Demo";


        //return view('emails.pasien', compact('header'));
        // $pdf = PDF::loadView('suratpengalamankerja.cetakpengalaman', compact('header','cetakpengalaman','sdm','jeniskaryawan','tgllahir','awal','akhir','tglcetak','tgllahir','awaleng','akhireng'));

        DB::table('surat_pengalaman_kerja')
            ->where('SEO', $request->id) // Kondisi
            ->update(['StatusID' => '1', 'TanggalKirim' => NOW()]);


        Mail::send('email.manager', array('header' => $cetakpengalaman, 'ip' => $ip), function ($message) use ($data) {

            $message->to($data["email"], $data["email"])

                ->subject($data["title"]);
            //->attachData($pdf->output(), "draft.pdf");

        });

        SuratPengalamanKerja::where('SEO', $request->id)
            ->update([
                'Sudah_Kirim_Email'  => 'Y'
            ]);
        alert()->success('Sukses', 'Email berhasil dikirim');


        return redirect('/pengalamankerja');
    }


    public function setujui_resign(Request $request)
    {
        $header = DB::table('surat_pengalaman_kerja')
            ->select(
                'ID',
                'SuketPengalamanID',
                'NamaKaryawan',
                'Bagian',
                'TempatLahir',
                'TanggalLahir',
                'JenisKaryawanID',
                'TanggalMasuk',
                'TanggalKeluar',
                'JabatanAkhir',
                'SEO',
                'Email'
            )
            ->where('SEO', $request->id)
            ->get();
        $ip = DB::table('ip_publik')
            ->select(
                'IP'
            )
            ->get();

        $data["email"] = $header[0]->Email;
        $data["title"] = "From SDM RS. Awal Bros Batam";
        $data["body"] = "This is Demo";


        $jumlahlog = DB::table('log_kirim_pengalaman_kerja')
            ->select(DB::raw('count(SuketPengalamanID) as jumlahlognya'))
            ->where('SEO', '>=', $header[0]->SEO)
            ->get();


        if ($jumlahlog[0]->jumlahlognya >= 10) {

            alert()->success('Error', 'Surat Sudah Pernah Disetujui');
        } else {

            Mail::send('email.karyawan', array('header' => $header, 'ip' => $ip), function ($message) use ($data) {
                $message->to($data["email"], $data["email"])
                    ->subject($data["title"]);
                //->attachData($pdf->output(), "draft.pdf");
            });

            DB::table('surat_pengalaman_kerja')
                ->where('SEO', $request->id) // Kondisi
                ->update([
                    'StatusID' => '2',
                    'TanggalSetujui' => NOW()
                ]);

            LogKirimPengalamanKerja::create([
                'SuketPengalamanID'    => $header[0]->SuketPengalamanID,
                'NamaKaryawan'         => $header[0]->NamaKaryawan,
                'Email'                => $header[0]->Email,
                'SEO'                  => $header[0]->SEO,
                'TanggalKirim'         => NOW()
            ]);

            //dd("Surat Pengalaman Kerja Sudah Terkirim Ke Email yusrizals020317061987@gmail.com");
            alert()->success('Sukses', 'Surat Pengalaman Kerja Berhasil Dikirim');
        }

        return view('email.alert');
    }

    public function kirimulangkekaryawan(Request $request)
    {
        $cetakpengalamankerja = DB::table('surat_pengalaman_kerja')
            ->where('SEO', $request->id)
            ->get();
        //dd($header);

        $ip = DB::table('ip_publik')
            ->select(
                'IP'
            )
            ->get();
        //dd($ip);

        $data["email"] = $cetakpengalamankerja[0]->Email;
        $data["title"] = "From SDM RS. Awal Bros Batam";
        $data["body"] = "This is Demo";



        Mail::send('email.karyawan', array('header' => $cetakpengalamankerja, 'ip' => $ip), function ($message) use ($data) {
            $message->to($data["email"], $data["email"])
                ->subject($data["title"]);
            //->attachData($pdf->output(), "draft.pdf");
        });

        alert()->success('Sukses', 'Surat Keterangan Berhasil Dikirim');

        return view('email.alert');
    }
}
