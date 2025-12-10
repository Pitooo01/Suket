<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="{{ asset('/css/w3.css') }}">

    <title>Surat Keterangan KPR Bank</title>

</head>

<body>

    <table border='1' width='185px' align=center>
        <tr>
            <td style=bold;font-size:19px; width='390px' align='center'>Data Surat Keterangan KPR Bank</td>
        </tr>
    </table>
    <p>Dear Bapak/Ibu {{$namamanager}}</p>
    <p>Mohon untuk disetujui Surat Keterangan KPR Bank, karyawan dibawah ini :</p>

    <br />
    <div>
        <table class="w3-table w3-bordered">
            <tr style=bold;font-size:19px;>
                <td width='150px'>No. Surat</td>
                <td width='2px'>:</td>
                <td width='350px' height=5px>{{$header->SuketKeteranganKprID}}</td>
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
                <td width='150px'>Nama Bank KPR</td>
                <td width='2px'>:</td>
                <td width='350px'>KPR di {{$namabank->NamaBank}}</td>
            </tr>

        </table>

    </div>
    <div>
        <p></p>
        <table>
            <tr>
                <td><button class="w3-button w3-blue-grey"><a href="{{ $ip }}/new_suket/kpr/setujuisuketketerangankpr/{{$header->SEO}}">SETUJUI SURAT KETERANGAN KPR</a></button></td>
                <td>
                    <button class="w3-button w3-red"><a href="{{ $ip }}/new_suket/kpr/batal/{{$header->SEO}}">TOLAK PENGAJUAN SURAT KETERANGAN KPR</a></button>
                </td>
            </tr>
        </table>
    </div>


</body>

</html>