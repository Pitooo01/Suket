@extends('layout.dashboard')

@section('title','Daftar Perusahaan')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta name="_base_url" content="{{ url('/') }}">
<a href="{{ url('/perusahaan/create') }}" class="btn btn-primary my-3">Tambah Perusahaan</a>  
<div class="card">
    <div class="card-body">
        <table id="tampil_perusahaan" class="table table-bordered table-striped">
            
            <thead>
                <tr>
                    <th width="2px">#</th>
                    <th >Kode Perusahaan</th>
                    <th >Nama Perusahaan</th>
                    <th >Alamat</th>
                    <th >No. Telp</th>
                    <th >Penanggung Jawab</th>
                    <th >Act</th>
                </tr>
            </thead>
            
        </table>
    </div>
</div>

<script src="{{ asset('/jsproyek/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">
@endsection