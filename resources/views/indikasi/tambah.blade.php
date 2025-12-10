@extends('layout.dashboard')
@section('title','Tambah Indikasi Pemeriksaan')

@section('content')

      <form method="post" action="{{ url('/indikasi') }}">
        @csrf
        <div class="input-group mb-3 text-sm">
          <input name="nama" type="text" class="form-control @error('nama') is-invalid @enderror" placeholder="Indikasi Pemeriksaan" value="{{ old('nama') }}">
        </div>
      
        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url('/indikasi') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection
