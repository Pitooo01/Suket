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
   <!--  <div style="margin-top: -50px; margin-bottom: 20px;">
          <img src="{{ asset('image/lengkap.jpg') }}" width="700px" />
    </div> -->

    <!-- <div style="background: url("image/plusmerah.png");">
    </div> -->

    <table border='0' width='185px' align=center>
        <tr>
            <td style=bold;font-size:17px;font-family: Arial, Helvetica, sans-serif; width='390px' align='center'><b><u>SURAT PENGALAMAN KERJA</u></b><br/>
                <p style="margin-top: -5px;"><i>Work Experience Letter</i></p><p style="margin-top: -15px; font-size: 13px">No. {{ @$cetakpengalaman[0]->SuketPengalamanID }}</p></td>
        </tr>
      </table>

                <div style="margin-left: 50px;">
                        <table border='0' width='0px'>
                            <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                                <td width='220px'>Yang bertanda tangan dibawah ini :<br/><p style="margin-top: -5px;"><i>The undersigned below:</i></p></td>
                            </tr>
                        </table>
                </div>
                <div style="padding-left: 80px">
                    <table border='0' width='70%'>
                        <tr style=font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='25%'>Nama<p style="margin-top: -5px;margin-bottom: -2px;"><i>Name</i></p></td>
                            <td width='2%'>:</td>
                            <td width='50%'>{{ @$sdm[0]->Nama }}</td>
                        </tr>
                        <tr style=font-size:13px;font-family: Arial, Helvetica, sans-serif;>
                          <td width='25%'>Jabatan<p style="margin-top: -5px;margin-bottom: -2px;"><i>Position</i></p></td>
                            <td width='2%'>:</td>
                            <td width='50%'>{{ @$sdm[0]->Status }}</td>
                        </tr>
                    </table>
                </div>
                <div style="margin-left: 50px;margin-right: 50px;">
                    <table border='0' width='100%'>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='100%'>Menerangkan dengan sesungguhnya bahwa yang tersebut dibawah ini :<p style="margin-top: -5px;"><i>Truthfully explained that:</i></p></td>
                        </tr>
                    </table>
                </div>
                <div style="padding-left: 80px">
                    <table border='0' width='70%'>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='25%'>Nama<p style="margin-top: -5px;margin-bottom: -2px;"><i>Name</i></p></td>
                            <td width='2%'>:</td>
                            <td width='50%'>{{ @$cetakpengalaman[0]->NamaKaryawan }}</td>
                        </tr>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                          <td width='25%'>Bagian<p style="margin-top: -5px;margin-bottom: -2px;"><i>Department</i></p></td>
                            <td width='2%'>:</td>
                            <td width='50%'>{{ @$cetakpengalaman[0]->Bagian }}</td>
                        </tr>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='25%'>Tempat/Tgl Lahir<p style="margin-top: -5px;margin-bottom: -2px;"><i>Date/Place of Birth</i></p></td>
                              <td width='2%'>:</td>
                              <td width='50%'>{{ @$cetakpengalaman[0]->TempatLahir }} / {{ $tgllahir }}</td>
                          </tr>
                          <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='25%'>Status Kepegawaian<p style="margin-top: -5px;margin-bottom: -2px;"><i>Occupational status</i></p></td>
                              <td width='2%'>:</td>
                              <td width='50%'>{{ @$jeniskaryawan[0]->Nama }}</td>
                          </tr>
                    </table>
                </div>
                <div style="margin-left: 50px;margin-right: 50px;">
                    <table border='0' width='100%'>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='100%' class="justify"><p>Adalah  benar  pernah bekerja di RS Awal Bros Batam sejak  tanggal  {{ $awal }} s.d {{ $akhir }} dengan jabatan terakhir sebagai {{ @$cetakpengalaman[0]->JabatanAkhir }} Rumah Sakit Awal Bros Batam. </p><p style="margin-top: -15px;"><i>He/She was a permanent employee in this company and working since {{ $awaleng }} until {{ $akhireng }} with his last position as {{ @$cetakpengalaman[0]->jabatanakhireng }}.</i></p></td>
                        </tr>
                    </table>
                </div>
                <div style="margin-left: 50px;margin-right: 50px;">
                    <table border='0' width='100%'>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='100%' class="justify">Manajemen mengucapkan terima kasih untuk kerjasama yang baik selama bekerja di Rumah Sakit Awal Bros Batam.<p style="margin-top: -5px;"><i>For his dedication and good conduct while working with us, we thank you.</i></p></td>
                        </tr>
                    </table>
                </div>
                <div style="margin-left: 50px;margin-right: 50px;">
                    <table border='0' width='100%'>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='100%' class="justify">Demikian surat pengalaman kerja ini diberikan untuk dapat dipergunakan sebagaimana mestinya, semoga prestasi dan keberhasilan senantiasa menyertai Saudara di waktu yang akan datang.<p style="margin-top: -5px;"><i>Thus this work experience letter is made and is hoped to be used appropriately, in hope that he/she will be more successful in the future.</i></p></td>
                        </tr>
                    </table>
                </div>
                <div style="position:absolute; top: 790px; left: 30px; width:5px; height:5px;  opacity: 1;">
                    <img src="{{ asset('image/ttdichabiru.png') }}" style="width:170px; height:80px;">
                </div>
            
                <div style="position:absolute; top: 808px; left: 30px; width:5px; height:5px;  opacity: 2;">
                    <img src="{{ asset('image/stempelbaru.png') }}" style="width:170px; height:60px;">
                </div>
                <div style="padding-top: 2px;margin-left: 50px;z-index: 1;">
                    <table border='0' width='80%'>
                        <tr style=bold;font-size:14px;font-family: Arial, Helvetica, sans-serif;>
                            <td width='50%' class="justify">Batam, {{ $tglcetak }}<br/>RS Awal Bros Batam<br/><br/><br/><u>{{ @$sdm[0]->Nama }}</u><br/>{{ @$sdm[0]->Status }}</td>
                            <td><img src="data:image/png;base64, {{ base64_encode(QrCode::format('svg')->size(100)->generate($ip[0]->IP.'/new_suket/validation/'.$cetakpengalaman[0]->SEO)) }} "></td>
                        </tr>
                    </table>
                </div>

        
               
        <!--  <footer> 
            <img src="{{ asset('image/gg.png') }}" style="position:absolute; top: 770px; left: 5px; width:700px; height:auto;" />
        </footer> -->
         <footer>
        <img src="{{ asset('image/footerform.jpg') }}" style="position:absolute; top: 840px; left: 5px; width:780px; height:auto;z-index: -1;" />
    </footer>
</body>
</html>