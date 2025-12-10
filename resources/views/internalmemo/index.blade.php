@extends('layout.dashboard')

@section('title', 'Master TTD')

@section('content')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="_base_url" content="{{ url('/') }}">
    <div style="display: flex; justify-content: flex-end">
        <button type="button" class="btn btn-primary my-3" data-toggle="modal" data-target="#modalTambahManager">Tambah
            Data Manager</button>
        {{-- <a href="{{ url('/pengalaman/create') }}" class="btn btn-primary my-3">Tambah Internal Memo</a> --}}
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
                    <td><select id="status" name="status">
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
                        <th>Tanda Tangan</th>
                        <th>Nama Manager</th>
                        <th>Status</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                        <tr>
                            <td>
                                <img src="{{ asset('storage/' . $row->ttd) }}"
                                    alt="TTD Manager"
                                    width="200">
                            </td>
                            <td>{{ $row->nama }}</td>
                            <td>{{ $row->status }}</td>
                            <td>{{ $row->email }}</td>
                        </tr>
                    @endforeach
                </tbody>

            </table>
        </div>
    </div>

    <!-- Modal Tambah Data Manager -->
    <div class="modal fade" id="modalTambahManager" tabindex="-1" role="dialog" aria-labelledby="modalTambahManagerLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTambahManagerLabel">Tambah Data Manager</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formTambahManager" action="{{ route('manager.create') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="nama_manager">Nama Manager</label>
                            <input type="text" class="form-control" id="nama_manager" name="nama_manager" required>
                        </div>

                        <div class="form-group">
                            <label for="status">Status</label>
                            <input type="text" class="form-control" id="status" name="status" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email Manager (Opsional)</label>
                            <input type="email" class="form-control" id="email" name="email">
                        </div>

                        <div class="form-group">
                            <label for="ttd_manager">Tanda Tangan (Upload File)</label>
                            <input type="file" class="form-control-file" id="ttd_manager" name="ttd_manager" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="{{ asset('/jssuratpengalaman/skrip.js') }}"></script>
    <script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/tabel.css') }}">


@endsection
