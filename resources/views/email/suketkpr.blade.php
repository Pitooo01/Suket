<!DOCTYPE html>

<html>

<head>
  <link rel="stylesheet" href="{{ asset('/css/w3.css') }}">
  <script src="{{ asset('/js/sweetalert.min.js') }}"></script>
  <title>Karyawan Resign</title>

</head>

<body>
  @include('sweet::alert')


  <table border='1' width='185px' align=center>
    <tr>
      <td style=bold;font-size:19px; width='390px' align='center'>Surat Keterangan KPR Bank</td>
    </tr>
  </table>
  <p>Dear Bapak/Ibu {{$header[0]->NamaKarywan}}</p>
  <p>Berikut kami kirimkan surat Keterangan KPR anda. Terima kasih</p>

  <br />
  <div>
    <table border='0' width='0px' align=center>
      <tr style=bold;font-size:19px;>
        <td width='150px'>No. Surat</td>
        <td width='2px'>:</td>
        <td width='350px' height=5px>{{$header[0]->SuketKeteranganKprID}}</td>
      </tr>
      <tr style=bold;font-size:19px;>
        <td width='150px'>NIK</td>
        <td width='2px'>:</td>
        <td width='350px'>{{$header[0]->NIK}}</td>
      </tr>
      <tr style=bold;font-size:19px;>
        <td width='150px'>Nama</td>
        <td width='2px'>:</td>
        <td width='350px'>{{$header[0]->NamaKarywan}}</td>
      </tr>
      <tr style=bold;font-size:19px;>
        <td width='150px'>Bagian/Jabatan</td>
        <td width='2px'>:</td>
        <td width='350px'>{{$header[0]->Bagian}} / {{$header[0]->Jabatan}}</td>
      </tr>
    </table>
    <p> <a href="{{ $ip }}/new_suket/kpr/email/{{$header[0]->SEO}}">Klik Disini Untuk Download Surat Keterangan KPR Anda.</a> </p>
  </div>
</body>

</html>