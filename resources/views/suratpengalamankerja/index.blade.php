@extends('layout.dashboard')

@section('title','Surat Pengalaman Kerja')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta name="_base_url" content="{{ url('/') }}">
<div style="display: flex; justify-content: flex-end">
    <a href="{{ url('/pengalaman/create') }}" class="btn btn-primary my-3">Tambah Surat Pengalaman Kerja</a>
</div>  
<div class="card">
    <div style="margin-left: 1.5%;margin-top:2%;">
        <table>
            <tr>
                <td><input type="date" name="awal" id="awal"></td>
                <td> s/d </td>
                <td><input type="date" name="akhir" id="akhir"></td>
                <td style="width: 7px;"></td>
                <td><input type="text" name="nik" id="nik" placeholder="NIK"></td>
                <td style="width: 7px;"></td>
                <td><input type="text" name="nama" id="nama" placeholder="Nama"></td>
                <td style="width: 7px;"></td>
                <td><select
                    id="status" name="status">
                    <option value="">-- Pilih Status --</option>
                    <option value="0">Belum Di Kirim Ke Manager</option>
                    <option value="1">Sudah Di Kirim Ke Manager</option>
                    <option value="2">Sudah Disetujui Manager</option>
                    <option value="3">Dibatalkan</option>
                </select></td>
                <td><button class="btn btn-primary" onclick="Cari_karyawan()">Cari</button></td>
                
                <td><button class="btn btn-warning" onclick="Bersihkan()">Bersihkan</button></td>
            </tr>
        </table>
    </div>
    <div class="card-body">
        <table id="tampil_pengalaman_kerja" class="table">
            
            <thead>
                <tr>
                    <th >Nomor Surat</th>
                    <th >Nama Karyawan</th>
                    <th >Bagian</th>
                    <th >Tanggal Masuk</th>
                    <th >Tanggal Keluar</th>
                    <th >Status</th>
                    <th >Tgl. Kirim</th>
                    <th >Tgl. Setujui</th>
                    <th >Act</th>
                </tr>
            </thead>
            <tbody id='tampil_pengalaman'>
            </tbody>
            
        </table>
    </div>
</div>

<script src="{{ asset('/jssuratpengalaman/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">
<link rel="stylesheet" href="{{ asset('/css/tabel.css') }}">
@endsection