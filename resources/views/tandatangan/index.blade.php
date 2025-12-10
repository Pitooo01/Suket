@extends('layout.dashboard')

@section('title', 'Master TTD')

@section('content')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="_base_url" content="{{ url('/') }}">
    <div style="display: flex; justify-content: flex-end">
        <button type="button" class="btn btn-primary my-3" data-toggle="modal" data-target="#modalTambahManager"><i
                class="fa-solid fa-plus mr-2"></i>Tambah Data</button>
        {{-- <a href="{{ url('/pengalaman/create') }}" class="btn btn-primary my-3">Tambah Internal Memo</a> --}}
    </div>
    {{-- <div class="card">
        <div class="card-body"> --}}
    <table id="tampil_pengalaman_kerja" class="table">

        <thead>
            <tr>
                <th>Tanda Tangan</th>
                <th>Nama Manager</th>
                <th>Status</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $row)
                <tr>
                    <td>
                        <img src="{{ asset('storage/' . $row->ttd) }}" alt="TTD Manager" width="200">
                    </td>
                    <td>{{ $row->nama }}</td>
                    <td>{{ $row->status }}</td>
                    <td>{{ $row->email }}</td>
                    <td class="justify-content-center">
                        <button class="btn btn-warning btn-sm mr-1">Edit</button>
                        <button class="btn btn-danger btn-sm">Hapus</button>
                    </td>
                </tr>
            @endforeach
        </tbody>

    </table>
    {{-- </div>
    </div> --}}

    <!-- Modal Tambah Data Manager -->
    <div class="modal fade" id="modalTambahManager" tabindex="-1" role="dialog" aria-labelledby="modalTambahManagerLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTambahManagerLabel">Tambah Data Tanda Tangan</h5>
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

    <script>
        $(document).ready(function() {
            $('#formTambahManager').submit(function(e) {
                e.preventDefault();
                var form = this;
                Swal.fire({
                    title: 'Konfirmasi Penyimpanan',
                    text: "Apakah Anda yakin ingin menyimpan data ini? Pastikan semua data sudah benar.",
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonColor: '#28a745',
                    cancelButtonColor: '#dc3545',
                    confirmButtonText: 'Ya, Simpan!',
                    cancelButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                        Swal.fire({
                            icon: 'success',
                            title: 'Berhasil!',
                            text: 'Data Berhasil Ditambahkan!',
                            timer: 5000,
                            showConfirmButton: false
                        }).then(() => {

                            window.location.reload();
                        });
                    }
                });
            });
        });
    </script>


@endsection
