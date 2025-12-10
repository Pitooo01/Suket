@extends('layout.dashboard')
@section('title','Tambah Saran Hasil Pemeriksaan')

@section('content')

      <form method="post" action="{{ url('/hasiltemplate') }}">
        @csrf
        <div class="input-group mb-3 text-sm">
          <input name="idsaran" type="text" class="form-control @error('idsaran') is-invalid @enderror" placeholder="ID Saran Hasil Pemeriksaan" value="{{ old('namalengkap') }}">
        </div>
        <div class="input-group mb-3 text-sm">
          <input name="namasaran" type="text" class="form-control @error('namasaran') is-invalid @enderror" placeholder="Nama Hasil Pemeriksaan" value="{{ old('namalengkap') }}">
        </div>

        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url('/hasiltemplate') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection