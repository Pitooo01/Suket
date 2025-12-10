<!DOCTYPE html>

<html>

<head>
	<link rel="stylesheet" href="{{ asset('/css/w3.css') }}">

    <title>Karyawan Resign</title>

</head>

<body>



    <table border='1' width='185px' align=center>
                  <tr>
                      <td style=bold;font-size:19px; width='390px' align='center'>Data Karyawan Resign</td>
                  </tr>
                </table>
                <p>Dear Bapak/Ibu {{$header[0]->NamaKaryawan}}</p>
                <p>Berikut kami kirimkan surat pengalaman kerja anda. Terima kasih</p>
      
                <br/>
                <div>
                        <table border='0' width='0px' align=center>
                            <tr style=bold;font-size:19px;>
                                <td width='150px'>No. Surat</td>
                                <td width='2px'>:</td>
                                <td width='350px' height=5px>{{$header[0]->SuketPengalamanID}}</td>
                            </tr>
                            <tr style=bold;font-size:19px;>
                              <td width='150px'>Nama</td>
                                <td width='2px'>:</td>
                                <td width='350px'>{{$header[0]->NamaKaryawan}}</td>
                            </tr>
                            <tr style=bold;font-size:19px;>
                              <td width='150px'>Bagian</td>
                                <td width='2px'>:</td>
                                <td width='350px'>{{$header[0]->Bagian}}</td>
                            </tr>
                            <tr style=bold;font-size:19px;>
                              <td width='150px'>Tanggal Masuk</td>
                                <td width='2px'>:</td>
                                <td width='350px'>{{$header[0]->TanggalMasuk}}</td>
                            </tr>
                            <tr style=bold;font-size:19px;>
                              <td width='150px'>Tanggal Keluar</td>
                                <td width='2px'>:</td>
                                <td width='350px'>{{$header[0]->TanggalKeluar}}</td>
                            </tr>
                            <tr style=bold;font-size:19px;>
                              <td width='150px'>Jabatan Akhir</td>
                                <td width='2px'>:</td>
                                <td width='350px'>{{$header[0]->JabatanAkhir}}</td>
                            </tr>
                		</table>
                        {{-- <p> <a href="http://103.141.254.42:8081/new_suket/pengalamankerja/cetak/{{$header[0]->SEO}}">Klik Disini Untuk Download Surat Pengalam Kerja Anda.</a> </p> --}}
                        <p> <a href="{{ $ip[0]->IP }}/new_suket/pengalamankerja/cetak/{{$header[0]->SEO}}">Klik Disini Untuk Download Surat Pengalam Kerja Anda.</a> </p>
                </div>                
</body>
</html>