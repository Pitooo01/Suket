@extends('layout.dashboard')

@section('title','Nama Bank KPR')

@section('content')
@include('sweet::alert')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">
<div style="display: flex; justify-content: flex-end">
    <a href="{{ url('/namabank/create') }}" class="btn btn-primary my-3">Tambah Nama Bank</a>
</div>
<div class="card-body">
    <table id="jabatan" class="table">

        <thead>
            <tr>
                <th style="width: 20%;">Nama Bank KPR</th>
                <th>Act</th>
            </tr>
        </thead>
        <tbody>
            @foreach( $namabanks as $namabank )
            <tr>
                <td>{{ $namabank->NamaBank }}</td>
                <td>
                        <a href="{{ url('/namabank/edit') }}/{{ encrypt($namabank->ID) }}" class="btn bg-gradient-primary">Edit</a>
                        <form action="{{ url('/namabank') }}/{{ encrypt($namabank->ID) }}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!')" >
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