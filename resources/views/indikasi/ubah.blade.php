@extends('layout.dashboard')
@section('title','Ubah Indikasi Pemeriksaan')

@section('content')
      
      <form method="post" action="{{ url('/indikasi') }}/{{$ab[0]->ID}}">
        @method('patch')
        {{csrf_field()}}
       
       
        <div class="input-group mb-3 text-sm">
          <input name="nama" type="text" class="form-control" placeholder="Nama Indikasi" value="{{$ab[0]->Nama}}">
          <div class="input-group-append">
            
          </div>
        </div>


        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Ubah</button>
            <a href="{{ url('/indikasi') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection
