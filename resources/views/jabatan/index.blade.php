@extends('layout.dashboard')

@section('title','Jabatan')

@section('content')
@include('sweet::alert')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">
<div style="display: flex; justify-content: flex-end">
    <a href="{{ url('/jabatan/create') }}" class="btn btn-primary my-3">Tambah Jabatan</a>
</div>
<div class="card-body">
    <table id="jabatan" class="table">

        <thead>
            <tr>
                <th style="width: 20%;">Nama Jabatan</th>
                <th>Act</th>
            </tr>
        </thead>
        <tbody>
            @foreach( $jabatans as $jabatan )
            <tr>
                <td>{{ $jabatan->NamaJabatan }}</td>
                <td>
                        <a href="{{ url('/jabatan/edit') }}/{{ encrypt($jabatan->ID) }}" class="btn bg-gradient-primary">Edit</a>
                        <form action="{{ url('/jabatan') }}/{{ encrypt($jabatan->ID) }}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!')" >
                            @method('delete')
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-danger">Delete</button> 
                        </form>
                    </td>
            </tr>
            @endforeach
        </tbody>

    </table>
</div>

@endsection