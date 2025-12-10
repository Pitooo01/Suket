<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link rel="stylesheet" href="{{ asset('/css/w3.css') }}">

    <style>
        /** Define the margins of your page **/
        @page {
            margin-top: 70px;
            size: a4 potrait;
        }


        header {
            position: fixed;
            top: -70px;
            left: 25px;
            right: 0px;
            height: 52px;

            /** Extra personal styles **/

            color: black;
            text-align: ;
            line-height: 12px;
        }

        .justify {
            text-align: justify;
        }

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;

            background-color: red;
            color: black;
            text-align: center;
        }
    </style>
</head>

<body>

    <div style="margin-top: -50px; margin-bottom: 20px;">
        <img src="{{ asset('image/logolengkap.png') }}" width="690px" />
    </div>

    <!-- <div style="background: url(" image/plusmerah.png");">
    </div> -->

    <table border='0' width='185px' align=center>
        <tr>
            <td style="bold;font-size:17px;font-family: Arial, Helvetica, sans-serif;" width='390px' align='center'><b><u>SURAT REKOMENDASI</u></b><br />
                <p style="margin-top: 3px; font-size: 13px">No. {{ @$cetakrekomendasi[0]->SuketRekomendasiID }}</p>
            </td>
        </tr>
    </table>

    <div style="margin-left: 30px;">
        <table border='0' width='0px'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='220px'>Yang bertanda tangan dibawah ini :
                </td>
            </tr>
        </table>
    </div>
    <div style="padding-left: 80px">
        <table border='0' width='70%'>
            <tr style=font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>Nama
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$sdm[0]->Nama }}</td>
            </tr>
            <tr style=font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>Jabatan
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$sdm[0]->Status }}</td>
            </tr>
        </table>
    </div>
    <div style="margin-left: 30px;margin-right: 50px;">
        <table border='0' width='100%'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='100%'>Menerangkan dengan sesungguhnya bahwa yang tersebut dibawah ini :
                </td>
            </tr>
        </table>
    </div>
    <div style="padding-left: 80px">
        <table border='0' width='70%'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>NIK
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$cetakrekomendasi[0]->NIK }}</td>
            </tr>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>Nama
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$cetakrekomendasi[0]->NamaKarywan }}</td>
            </tr>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>Tempat/Tgl Lahir
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$cetakrekomendasi[0]->TempatLahir }} / {{ @$tgllahir }}</td>
            </tr>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>Bagian/Jabatan
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$cetakrekomendasi[0]->Bagian }} / {{ @$cetakrekomendasi[0]->Jabatan }}</td>
            </tr>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='25%'>Status Kepegawaian
                </td>
                <td width='2%'>:</td>
                <td width='50%'>{{ @$jeniskaryawan[0]->Nama }}</td>
            </tr>
        </table>
    </div>
    <div style="margin-left: 30px;margin-right: 50px;">
        <table border='0' width='100%'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='100%' class="justify">Adalah benar yang bersangkutan masih bekerja di Rumah Sakit Awal Bros Ujung Batu sejak tanggal {{ @$tglmasuk }} sampai dengan {{ @$tglkeluar }}.
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-left: 30px;margin-right: 50px;">
        <table width='100%'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='100%' class="justify">Adapun surat keterangan ini dibuat dengan maksud untuk melengkapi persyaratan pengajuan Pinjaman ke Bank ABS (BPR) sebesar Rp.{{ number_format($cetakrekomendasi[0]->JumlahPengajuan, 2, ',', '.') }} selanjutnya segala sesuatu hal yang diakibatkan masalah hutang yang bersangkutan adalah bukan tanggung jawab RS Awal Bros Ujung Batu. Mohon kiranya yang bersangkutan dapat dibantu dalam kelancaran pengurusan tersebut.
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-left: 30px;margin-right: 50px;">
        <table width='100%'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='100%' class="justify">Demikian surat keterangan ini diberikan untuk dapat dipergunakan sebagaimana mestinya.
                </td>
            </tr>
        </table>
    </div>

    <div style="position:absolute; top: 550px; left: 30px; width:5px; height:5px;  opacity: 1;">
        <img src="{{ asset('image/ttdichabiru.png') }}" style="width:170px; height:80px;">
    </div>

    <div style="position:absolute; top: 560px; left: 48px; width:5px; height:5px;  opacity: 2;">
        <img src="{{ asset('image/stempelbaru.png') }}" style="width:170px; height:60px;">
    </div>

    <div style="padding-top: 25px;margin-left: 30px">
        <table width='80%'>
            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                <td width='50%' class="justify">Ujung Batu, {{ $tglcetak }} <br />RS Awal Bros Ujung Batu<br /><br /><br /><u>{{ @$sdm[0]->Nama }}</u><br />{{ @$sdm[0]->Status }}</td>

            </tr>
        </table>
    </div>

    <footer>
        <img src="{{ asset('image/footerform.jpg') }}" style="position:absolute; top: 835px; left: 5px; width:780px; height:auto;" />
    </footer>

</body>

</html>