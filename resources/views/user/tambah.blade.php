@extends('layout.dashboard')
@section('title','Tambah Daftar Pengguna')

@section('content')

      <form method="post" action="{{ url('/user') }}">
        @csrf
        <div class="input-group mb-3 text-sm">
          <input name="namalengkap" type="text" class="form-control @error('namalengkap') is-invalid @enderror" placeholder="Nama Lengkap" value="{{ old('namalengkap') }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input name="email" type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" value="{{ old('email') }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input name="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password" value="{{ old('password') }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input name="repassword" type="password" class="form-control @error('repassword') is-invalid @enderror" placeholder="Retype password" value="{{ old('repassword') }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>

        <div class="form-group">
             <select name="leveltambah" class="form-control select2 col-md-6">
                <option selected="selected">-- Pilih Level Akses --</option>
              @foreach($role as $roles)
                <option value="{{ $roles->role_id }}">{{ $roles->nama }}</option>
              @endforeach
              </select>
        </div>
              <!-- /.col -->
      

        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url ('/user') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection
