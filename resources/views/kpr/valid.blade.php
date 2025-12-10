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
    <form action="/action_page.php" class="w3-container w3-card-4 w3-light-grey w3-text-blue  w3-display-middle">
<h2 class="w3-center">Data Valid</h2>
 
<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-border" name="first" type="text" value="{{ @$cetakpengalaman[0]->SuketPengalamanID }}" readonly="">
    </div>
</div>

<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-border" name="last" type="text" value="{{ @$cetakpengalaman[0]->NamaKaryawan }}" readonly="">
    </div>
</div>

<div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-border" name="email" type="text" value="Surat Keterangan Ini Valid & Sudah di Verifikasi" readonly="">
    </div>
</div>
</form>
</body>
</html>