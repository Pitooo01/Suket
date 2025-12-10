@extends('layout.dashboard')

@section('title','Surat Pengalaman Kerja')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">


<form id="frm_ubah_pengalaman" name="frm_ubah_pengalaman">
	<div class="card-body">
		<div class="row">
			<div class="col-md-6">
				<div class="card card-primary">

					<div class="card-header">
					<h3 class="card-title">Data Karyawan</h3>
					</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Nomor Surat</label>
							<input type="text" class="form-control" id="nomorsurat" placeholder="Nama Karyawan" value="{{$hasil[0]->SuketPengalamanID}}" readonly="">
						</div>
	
						<div class="form-group">
							<label for="exampleInputEmail1">Nama Karyawan</label>
							<input type="text" class="form-control" id="namakaryawan" placeholder="Nama Karyawan" value="{{$hasil[0]->NamaKaryawan}}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Bagian</label>
							<input type="text" class="form-control" id="bagian" placeholder="Bagian" value="{{$hasil[0]->Bagian}}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Tempat lahir</label>
							<input type="text" class="form-control" id="tempatlahir" placeholder="Tempat lahir" value="{{$hasil[0]->TempatLahir}}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Tanggal lahir</label>
							<input type="date" class="form-control" id="tanggallahir" placeholder="Tempat lahir" value="{{$hasil[0]->TanggalLahir}}">
						</div>
	</div>
		</div>

	<div class="col-md-6">
	<div class="card card-primary">

			<div class="card-header">
			  <h3 class="card-title">Status Kerjaan</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
		<div class="form-group">
		  <label>Status Kepegawaian</label>
		  <select class="form-control select2" id="statuspegawaiubah" name="statuspegawaiubah"style="width: 100%;">
					<option selected="selected">-- Jenis Karyawan --</option>
					@foreach($jk as $jeniskaryawan)
				  <option value="{{ $jeniskaryawan->JenisKaryawanID }}" @if($hasil[0]->JenisKaryawanID==$jeniskaryawan->JenisKaryawanID) selected="selected" @endif> {{ $jeniskaryawan->Nama }} </option>
				  
				  @endforeach
		  </select>
		</div>
		<div class="form-group">
		  <label for="exampleInputPassword1">Tanggal Mulai Kerja</label>
		  <input type="date" class="form-control" id="tglmulaikerja" placeholder="Tempat lahir" value="{{$hasil[0]->TanggalMasuk}}">
		</div>
		<div class="form-group">
		  <label for="exampleInputPassword1">Tanggal Akhir Kerja</label>
		  <input type="date" class="form-control" id="tglakhirkerja" placeholder="Tempat lahir" value="{{$hasil[0]->TanggalKeluar}}">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Jabatan Akhir</label>
			<input type="text" class="form-control" id="jabatanakhir" placeholder="Jabatan Akhir" value="{{$hasil[0]->JabatanAkhir}}">
		  </div>
		<div class="form-group">
			<label for="exampleInputEmail1">Alamat Email</label>
			<input type="email" class="form-control" id="email" placeholder="email" value="{{$hasil[0]->Email}}">
		  </div>

	  </div>

	</div>
	</div>
</div>

<div class="container">
            <div class="row mt-5 text-center">
                {{ $qrcode }}
            </div>
        </div>
	<!-- /.card-body -->
  </form>
<br/>
<br/>


<diV class="w3-center">              
    <input type="button" id="btn_cari_data" class="w3-btn w3-round-medium w3-indigo w3-large" value="Ubah Data" onclick="fn_ubah_pengalaman()" />
    <a href="{{ url('/pengalamankerja') }}" class="w3-btn w3-round-small w3-green w3-large">Kembali</a>                  
</diV>


<script src="{{ asset('/jssuratpengalaman/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">

@endsection

  

  

