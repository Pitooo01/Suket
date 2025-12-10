@extends('layout.dashboard')
@section('title','Ubah Daftar Pengguna')

@section('content')
      
      <form method="post" action="{{url('/user')}}/{{$ab[0]->remember_token}}" enctype="multipart/form-data">
        @method('patch')
        {{csrf_field()}}
        <input name="remember_token" type="hidden" class="form-control" placeholder="Nama Lengkap" value="{{$ab[0]->remember_token}}" readonly="">
        <div class="form-group">
          <label for="exampleInputEmail1">Nama</label>
          <input name="namalengkap" type="text" class="form-control" placeholder="Nama Lengkap" value="{{$ab[0]->name}}">
        </div>

        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input name="email" type="email" class="form-control" placeholder="Email" value="{{$ab[0]->email}}" readonly="">
         
        </div>

        <div class="form-group">
          <label for="exampleInputEmail1">Level</label>
            <select  class="form-control select2 select2-danger col-md-6" name="level">
              @foreach($role as $roles)
                <option value="{{ $roles->role_id }}" {{ $ab[0]->role == $roles->role_id ? 'selected="selected"' : '' }}>
                {{ $roles->nama }}
                </option>
              @endforeach
            </select>
        </div>

        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Ubah</button>
            <a href="{{ url('/user') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection
