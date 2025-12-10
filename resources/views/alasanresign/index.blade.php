@extends('layout.dashboard')

@section('title','Alasan Resign')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta name="_base_url" content="{{ url('/') }}">
<a href="{{ url('/alasan/create') }}" class="btn btn-primary my-3">Tambah Alasan Resign</a>  
<div class="card">
    <div class="card-body">
        <table id="tampil_alasan" class="table table-bordered table-striped">
            
            <thead>
                <tr>
                    <th width="2px">#</th>
                    <th >Kode Alasan</th>
                    <th >Alasan Resign</th>
                    <th >Act</th>
                </tr>
            </thead>
            
        </table>
    </div>
</div>

<script src="{{ asset('/jsalasan/skrip.js') }}"></script>
<script src="{{ asset('/js/jquery-ui-1-12-1.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/css/jquery-ui-1-12-1.css') }}">
@endsection