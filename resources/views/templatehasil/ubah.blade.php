@extends('layout.dashboard')
@section('title','Ubah Hasil Pemeriksaan')

@section('content')
      
      <form method="post" action="{{ url('/hasiltemplate') }}/{{$ab[0]->ID}}">
        @method('patch')
        {{csrf_field()}}
        
        

        <div class="form-group">
          <label for="inputDescription">Hasil Pemeriksaan Template</label>
            <textarea name="namahasil"  class="" rows="4">
              {{$ab[0]->NAMA}}
            </textarea>
        </div>


        <div class="row float-right">
          <!-- /.col -->
          <div>
            <button type="submit" class="btn btn-primary">Ubah</button>
            <a href="{{ url('/hasiltemplate') }}" class="btn btn-warning">Kembali</a>
          </div>
          <!-- /.col -->
        </div>
      </form>   
      
@endsection