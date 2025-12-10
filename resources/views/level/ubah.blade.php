@extends('layout.dashboard')
@section('title','Ubah Level Pengguna')

@section('content')
      
      <form method="post" action="{{ url('/level') }}/{{$ab[0]->remember_token}}">
        @method('patch')
        {{csrf_field()}}
       
       
        <div class="input-group mb-3 text-sm">
          <input name="nama" type="text" class="form-control" placeholder="Nama Level" value="{{$ab[0]->nama}}">
          <div class="input-group-append">
            
          </div>
        </div>


        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Ubah</button>
            <a href="{{ url('/level') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection
