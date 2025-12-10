<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	
	<style>
                  /** Define the margins of your page **/
          @page {
              margin: 100px 25px;
              size: 21cm 29,7cm potrait;
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

          footer {
              position: fixed; 
              bottom: -60px; 
              left: 0px; 
              right: 0px;
              height: 50px; 

              /** Extra personal styles **/
              background-color: #03a9f4;
              color: white;
              text-align: center;
              line-height: 10px;
          }

        .rizal {
	      	margin-left: 25px;
	      }
	      .justify { 
	      	text-align: justify;
	      }
	      .bord{border:1px solid #0000!important}

       
        #mcu {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 80%;
        }

        #mcu td, #mcu th {
          border: 1px solid #ddd;
          padding: 1px;
          word-break: break-all;
        }

        #mcu tr:nth-child(even){background-color: #d0ece7;}

        #mcu tr:hover {background-color: #ddd;}

        #mcu th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: center;
          background-color: #a2d9ce;
          color:  #2c3e50;
        }
                  
    </style>
</head>
<body>
        <div style="margin-top: -50px; margin-bottom: 20px;">
          <img src="{{ asset('image/awalbros_sks.png') }}" width="350px" />
        </div>
	<div>

    <table border='0' width='0px' align=center>
      <tr>
        <td style=bold;font-size:20px; width='390px' align='center'><u>Laporan Detail Riwayat Penyakit Keluarga</u><br/>Bulan {{$bulannya}} Tahun {{$tahunnya}}</td>
      </tr>
    </table>
  </div>

  <div>
    <p><b>Kencing manis</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($diabet as $diabet1)
       <tr>
          <td width='15px'>{{ @$diabet1->MEDRECID }}</td>
          <td>{{ @$diabet1->RegID }}</td>
          <td>{{ @$diabet1->Nama }}</td>
          <td>{{ @$diabet1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Penyakit darah tinggi</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($hypertension as $hypertension1)
       <tr>
          <td width='15px'>{{ @$hypertension1->MEDRECID }}</td>
          <td>{{ @$hypertension1->RegID }}</td>
          <td>{{ @$hypertension1->Nama }}</td>
          <td>{{ @$hypertension1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Penyakit jantung</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($heartdisease as $heartdisease1)
       <tr>
          <td width='15px'>{{ @$heartdisease1->MEDRECID }}</td>
          <td>{{ @$heartdisease1->RegID }}</td>
          <td>{{ @$heartdisease1->Nama }}</td>
          <td>{{ @$heartdisease1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>TBC</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($tuberculosis as $tuberculosis1)
       <tr>
          <td width='15px'>{{ @$tuberculosis1->MEDRECID }}</td>
          <td>{{ @$tuberculosis1->RegID }}</td>
          <td>{{ @$tuberculosis1->Nama }}</td>
          <td>{{ @$tuberculosis1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Penyakit ginjal</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($kidneydisease as $kidneydisease1)
       <tr>
          <td width='15px'>{{ @$kidneydisease1->MEDRECID }}</td>
          <td>{{ @$kidneydisease1->RegID }}</td>
          <td>{{ @$kidneydisease1->Nama }}</td>
          <td>{{ @$kidneydisease1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Asma</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($asthma as $asthma1)
       <tr>
          <td width='15px'>{{ @$asthma1->MEDRECID }}</td>
          <td>{{ @$asthma1->RegID }}</td>
          <td>{{ @$asthma1->Nama }}</td>
          <td>{{ @$asthma1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Penyakit gangguan jiwa</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($psychiatric as $psychiatric1)
       <tr>
          <td width='15px'>{{ @$psychiatric1->MEDRECID }}</td>
          <td>{{ @$psychiatric1->RegID }}</td>
          <td>{{ @$psychiatric1->Nama }}</td>
          <td>{{ @$psychiatric1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Ayan/epilepsi</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($epilepsy as $epilepsy1)
       <tr>
          <td width='15px'>{{ @$epilepsy1->MEDRECID }}</td>
          <td>{{ @$epilepsy1->RegID }}</td>
          <td>{{ @$epilepsy1->Nama }}</td>
          <td>{{ @$epilepsy1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Kanker</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($epilepsy as $epilepsy1)
       <tr>
          <td width='15px'>{{ @$epilepsy1->MEDRECID }}</td>
          <td>{{ @$epilepsy1->RegID }}</td>
          <td>{{ @$epilepsy1->Nama }}</td>
          <td>{{ @$epilepsy1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>
  </div>
  <br/>
  <hr>
  <br/>
  <div>
    <p><b>Stroke</b></p>
    <table border='1' width='0px' style=font-size:12px; id="mcu" class="w3-table">
      <tr>
          <th width='15px' align=center style=bold><b>No. Medrec</b></th>
          <th width='25px' align=center style=bold><b>No. Registrasi</b></th>
          <th width='30px' align=center style=bold><b>Nama</b></th>
          <th width='30px' align=center style=bold><b>Jenis Kelamin</b></th>
      </tr>
      @foreach($stroke as $stroke1)
       <tr>
          <td width='15px'>{{ @$stroke1->MEDRECID }}</td>
          <td>{{ @$stroke1->RegID }}</td>
          <td>{{ @$stroke1->Nama }}</td>
          <td>{{ @$stroke1->JenisKelamin }}</td>
       </tr>   
      @endforeach
    </table>

  </div>
  <div style="text-align: right; margin-right: 45px; margin-top: 15px;"><b>Pekanbaru, {{$tanggal}}</b><br/><br/><br/><br/><u>Epiardi Anam</u><br/>Koordinator MCU</div>
</body>
</html>