@extends('layout.dashboard')

@section('title','Tambah Perusahaan')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">
<div class="container">
   	<form id="frm_tambah_perusahaan" name="frm_tambah_perusahaan">
	  <table  width="90%" border="0">
      <tr>
	  		<td class="w3-medium w3-text-indigo"><label>Nama</label></td>
	  		<td><input type=text id="nama" name="nama" size="100" class="w3-medium"></td>
	  	</tr>
      <tr>
	  		<td class="w3-medium w3-text-indigo"><label>Alamat</label></td>
	  		<td><input type=text id="alamat" name="alamat" size="100" class="w3-medium"></td>
	  	</tr>
      <tr>
	  		<td class="w3-medium w3-text-indigo"><label>No. Telp</label></td>
	  		<td><input type=text id="notelp" name="notelp" size="100" class="w3-medium"></td>
	  	</tr>
      <tr>
	  		<td class="w3-medium w3-text-indigo"><label>Penanggung Jawab</label></td>
	  		<td><input type=text id="penanggungjawab" name="penanggungjawab" size="100" class="w3-medium"></td>
	  	</tr>
	  </table>
	</form>
</div>
<br/>
<br/>
<diV class="w3-center">              
    <input type="button" id="btn_cari_data" class="w3-btn w3-round-medium w3-indigo w3-large" value="Simpan" onclick="fn_tambah_perusahaan()" />
    <a href="{{ url('/perusahaan') }}" class="w3-btn w3-round-small w3-green w3-large">Kembali</a>                  
</diV>


<script src="{{ asset('/jsproyek/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">

@endsection

  

  

