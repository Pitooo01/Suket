@extends('layout.dashboard')
@section('title','Ubah Satuan')

@section('content')
      
      <form method="post" action="{{ url('/satuan') }}/{{$ab[0]->SatuanID}}">
        @method('patch')
        {{csrf_field()}}
        
        

        <div class="form-group">
          <label for="inputDescription">Nama Satuan</label>
            <input type="text" class="form-control" name="namasatuan"  value="{{$ab[0]->Nama}}">
        </div>


        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Ubah</button>
            <a href="{{ url('/satuan') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection