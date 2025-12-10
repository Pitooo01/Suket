@extends('layout.dashboard')

@section('title','Edit Alasan Resign')

@section('content')

<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">
<div class="container">
   	<form id="frm_ubah_alasan" name="frm_ubah_alasan">
	  <table  width="90%" border="0">
		<tr>
			<td ><input type=hidden id="alasanid" name="alasanid" size="25" class="w3-medium" value="{{$hasil[0]->AlasanID}}" readonly="">
	  </td>
	</tr>
      <tr>
	  		<td class="w3-medium w3-text-indigo"><label>Nama</label></td>
	  		<td><input type=text id="nama" name="nama" size="100" class="w3-medium" value="{{$hasil[0]->Nama}}"></td>
	  </tr>
	  </table>
	</form>
</div>
<br/>
<br/>
<diV class="w3-center">              
    <input type="button" id="btn_cari_data" class="w3-btn w3-round-medium w3-indigo w3-large" value="Simpan" onclick="fn_ubah_alasan()" />
    <a href="{{ url('/alasanresign') }}" class="w3-btn w3-round-small w3-green w3-large">Kembali</a>                  
</diV>


<script src="{{ asset('/jsalasan/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">

@endsection

  

  

