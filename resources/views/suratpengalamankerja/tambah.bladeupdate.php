@extends('layout.dashboard')

@section('title','Surat Pengalaman Kerja')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">


<form id="frm_tambah_pengalaman" name="frm_tambah_pengalaman">
	
	<div class="card-body">
        <div class="row">
            <table class="table table-sm">
				<tr>
					<td colspan="3" align="center" style="color:darkcyan;font-weight:bold;background-color:#F0F8FF;">Nomor Surat</td>
				</tr>
				<tr>
                    <td style="width: 15%;">No Surat.</td>
                    <td>:</td>
                    <td><input type="text" id="nosurat" name="nosurat" style="width: 5%;"> /<input type="text"
                            value="RSAB-BTM/SDM" style="border: none;outline: none;width: 12%;"><select
                            id="bulan" name="bulan">
                            <option value="">-- Pilih Bulan --</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>.<input type="text" id="tahun" name="tahun" style="width: 5%;"
                            value="{{ now()->year }}"></td>
                </tr>
				<tr>
					<td colspan="3" align="center" style="color:darkcyan;font-weight:bold;background-color:#F0F8FF;">Data Karyawan</td>
				</tr>
				<tr>
                    <td style="width: 15%;">NIK Karyawan</td>
                    <td>:</td>
					<td><input type="text" class="form-control" id="nikkaryawan" placeholder="NIK Karyawan" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Nama Karyawan</td>
                    <td>:</td>
					<td><input type="text" class="form-control" id="namakaryawan" placeholder="Nama Karyawan" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Bagian</td>
                    <td>:</td>
					<td><input type="text" class="form-control" id="bagian" placeholder="Bagian" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Tempat Lahir</td>
                    <td>:</td>
					<td><input type="text" class="form-control" id="tempatlahir" placeholder="Tempat lahir" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Tanggal Lahir</td>
                    <td>:</td>
					<td><input type="date" class="form-control" id="tanggallahir" placeholder="Tanggal lahir" style=" width: 55%;"></td>
				</tr>
				<tr>
					<td colspan="3" align="center" style="color:darkcyan;font-weight:bold;background-color:#F0F8FF;">Status Kerjaan</td>
				</tr>
				<tr>
                    <td style="width: 15%;">Status Kepegawaian</td>
                    <td>:</td>
					<td><select class="form-control select2" id="statuspegawai" style=" width: 55%;">
						<option selected="selected">-- Jenis Karyawan --</option>
						@foreach($jk as $jeniskaryawan)
						<option value="{{ $jeniskaryawan->JenisKaryawanID }}">{{ $jeniskaryawan->Nama }}</option>
						@endforeach
			  			</select></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Tanggal Mulai Kerja</td>
                    <td>:</td>
					<td><input type="date" class="form-control" id="tglmulaikerja" placeholder="Tempat lahir" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Tanggal Akhir Kerja</td>
                    <td>:</td>
					<td><input type="date" class="form-control" id="tglakhirkerja" placeholder="Tempat lahir" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Jabatan Akhir</td>
                    <td>:</td>
					<td><input type="text" class="form-control" id="jabatanakhir" placeholder="Jabatan Akhir" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Jabatan Akhir(English Version)</td>
                    <td>:</td>
					<td><input type="text" class="form-control" id="jabatanakhireng" placeholder="Jabatan Akhir English" style=" width: 55%;"></td>
				</tr>
				<tr>
                    <td style="width: 15%;">Alamat Email</td>
                    <td>:</td>
					<td><input type="email" class="form-control" id="email" placeholder="email" style=" width: 55%;"></td>
				</tr>
			</table>
		</div>
	</div>
  </form>
<br/>
<br/>


<diV class="w3-center">              
    <input type="button" id="btn_cari_data" class="w3-btn w3-round-medium w3-indigo w3-large" value="Simpan" onclick="fn_tambah_pengalaman()" />
    <a href="{{ url('/pengalamankerja') }}" class="w3-btn w3-round-small w3-green w3-large">Kembali</a>                  
</diV>

{{-- Form Loading --}}

<div id="_div_loading">
    <img src="{{ asset('image/loading1.gif') }}" title='Loading' style="width: 90%;" />
</div>
{{-- END Form Loading --}}
<script src="{{ asset('/jssuratpengalaman/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">

<script>
	 $(function() {
		$('#_div_loading').dialog({
            autoOpen: false,

            height: 350,
            width: 350,
            modal: true,
            resizable: false,
            closeOnEscape: false,
            open: function(event, ui) {
                $(".ui-dialog-titlebar").hide();
                $(".ui-dialog-titlebar-close").hide();
            },
            close: function(event, ui) {
                $(".ui-dialog-titlebar").show();
            }
        });
	 });
</script>
@endsection

  

  

