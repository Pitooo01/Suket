@extends('layout.dashboard')

@section('title','Surat Rekomendasi Pinjaman BPR ABS')

@section('content')
@include('sweet::alert')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">

<div style="display: flex; justify-content: flex-end">
    <a href="{{ url('/rekomendasi/create') }}" class="btn btn-primary my-3">Tambah Surat Rekomendasi</a>
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
                    <option value="-1">Dibatalkan</option>
                </select></td>
                <td><button class="btn btn-primary" onclick="Cari_karyawan()">Cari</button></td>
                <td style="width: 10px;"></td>
                <td><button class="btn btn-warning" onclick="Bersihkan()">Bersihkan</button></td>
            </tr>
        </table>
    </div>
    <div class="card-body">
        <table id="keterangan_bekerja" class="table">

            <thead>
                <tr>
                    <th style="width: 20%;">Nomor Surat</th>
                    <th>NIK</th>
                    <th>Nama Karyawan</th>
                    <th>Bagian/Jabatan</th>
                    <th>Tanggal Masuk</th>
                    <th style="width: 15%;">Jumlah Pengajuan</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Tgl. Kirim</th>
                    <th>Tgl. Disetujui</th>
                    <th>Act</th>
                </tr>
            </thead>
            <tbody id='tampil_keterangan_kerja'>
            </tbody>

        </table>
    </div>
</div>

<script src="{{ asset('/jsrekomendasi/tampil.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">
<link rel="stylesheet" href="{{ asset('/css/tabel.css') }}">
@endsection