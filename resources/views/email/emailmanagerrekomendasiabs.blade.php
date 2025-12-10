<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="{{ asset('/css/w3.css') }}">

    <title>Surat Rekomendasi</title>

</head>

<body>

    <table border='1' width='185px' align=center>
        <tr>
            <td style=bold;font-size:19px; width='390px' align='center'>Data Surat Keterangan</td>
        </tr>
    </table>
    <p>Dear Bapak/Ibu {{$sdm->Nama}}</p>
    <p>Mohon untuk disetujui Surat Rekomdasi Pinjaman Ke BPR ABS, karyawan dibawah ini :</p>

    <br />
    <div>
        <table class="w3-table w3-bordered">
            <tr style=bold;font-size:19px;>
                <td width='150px'>No. Surat</td>
                <td width='2px'>:</td>
                <td width='350px' height=5px>{{$header->SuketRekomendasiID}}</td>
            </tr>
            <tr style=bold;font-size:19px;>
                <td width='150px'>NIK</td>
                <td width='2px'>:</td>
                <td width='350px' height=5px>{{$header->NIK}}</td>
            </tr>
            <tr style=bold;font-size:19px;>
                <td width='150px'>Nama</td>
                <td width='2px'>:</td>
                <td width='350px' height=5px>{{$header->NamaKarywan}}</td>
            </tr>
            <tr style=bold;font-size:19px;>
                <td width='150px'>Bagian/Jabatan</td>
                <td width='2px'>:</td>
                <td width='350px'>{{$header->Bagian}} / {{$header->Jabatan}}</td>
            </tr>
            <tr style=bold;font-size:19px;>
                <td width='150px'>Tanggal Masuk</td>
                <td width='2px'>:</td>
                <td width='350px'>{{$header->awal}}</td>
            </tr>
            <tr style=bold;font-size:19px;>
                <td width='150px'>Jumlah Pengajuan</td>
                <td width='2px'>:</td>
                <td width='350px'>Rp. {{ number_format($header->JumlahPengajuan, 2, ',', '.') }}</td>
            </tr>

        </table>

    </div>
    <div>
        <p></p>
        <table>
            <tr>
                <td><button class="w3-button w3-blue-grey"><a href="{{ $ip->IP }}/new_suket/rekomendasi/setujuisuketketerangan/{{$header->SEO}}">SETUJUI SURAT REKOMENDASI PINJAMAN BPR ABS</a></button></td>
                <td>
                    <button class="w3-button w3-red"><a href="{{ $ip->IP }}/new_suket/rekomendasi/batal/{{$header->SEO}}">TOLAK PENGAJUAN SURAT REKOMENDASI PINJAMAN BPR ABS</a></button>
                </td>
            </tr>
        </table>
    </div>


</body>

</html>