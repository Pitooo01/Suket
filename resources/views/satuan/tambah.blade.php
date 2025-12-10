@extends('layout.dashboard')
@section('title','Tambah Satuan')

@section('content')

      <form method="post" action="{{ url('/satuan') }}">
        @csrf
        <div class="input-group mb-3 text-sm">
          <input name="idsatuan" type="text" class="form-control @error('idsatuan') is-invalid @enderror" placeholder="ID Satuan" value="{{ old('namalengkap') }}">
        </div>
        <div class="input-group mb-3 text-sm">
          <input name="namasatuan" type="text" class="form-control @error('namasatuan') is-invalid @enderror" placeholder="Nama Satuan" value="{{ old('namalengkap') }}">
        </div>

        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url('/satuan') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection