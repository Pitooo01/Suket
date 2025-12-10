@extends('layout.dashboard')
@section('title','Tambah Level Pengguna')

@section('content')

      <form method="post" action="{{ url('/level') }}">
        @csrf
        <div class="input-group mb-3 text-sm">
          <input name="idlevel" type="text" class="form-control @error('idlevel') is-invalid @enderror" placeholder="ID Level" value="{{ old('namalengkap') }}">
        </div>
        <div class="input-group mb-3 text-sm">
          <input name="namalevel" type="text" class="form-control @error('namalevel') is-invalid @enderror" placeholder="Nama Level" value="{{ old('namalengkap') }}">
        </div>

        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url('/level') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection
