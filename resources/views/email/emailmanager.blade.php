<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="{{ asset('/css/w3.css') }}">

    <title>Surat surat_keterangan_kerja</title>

</head>

<body>

    <table border='1' width='185px' align=center>
        <tr>
            <td style=bold;font-size:19px; width='390px' align='center'>Data Surat Keterangan</td>
        </tr>
    </table>
    <p>Dear Bapak/Ibu {{$sdm->Nama}}</p>
    <p>Mohon untuk disetujui Surat Keterangan, karyawan dibawah ini :</p>

    <br />
    <div>
        <table class="w3-table w3-bordered">
            <tr style=bold;font-size:19px;>
                <td width='150px'>No. Surat</td>
                <td width='2px'>:</td>
                <td width='350px' height=5px>{{$header->SuketKeteranganID}}</td>
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
                <td width='150px'>Keperluan Surat</td>
                <td width='2px'>:</td>
                <td width='350px'>{{$keperluansurat->Nama}}</td>
            </tr>

        </table>

    </div>
    <div>
        <p></p>
        <table>
            <tr>
                <td><button class="w3-button w3-blue-grey"><a href="{{ $ip->IP }}/new_suket/keteranganbekerja/setujuisuketketerangan/{{$header->SEO}}">SETUJUI SURAT KETERANGAN</a></button></td>
                <td>
                    <button class="w3-button w3-red"><a href="{{ $ip->IP }}/new_suket/keteranganbekerja/batal/{{$header->SEO}}">TOLAK PENGAJUAN SURAT</a></button>
                </td>
            </tr>
        </table>
    </div>


</body>

</html>