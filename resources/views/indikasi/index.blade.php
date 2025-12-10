@extends('layout.dashboard')

@section('title','Daftar Indikasi Pemeriksaan')

@section('content')
        
        <a href="{{ url('/indikasi/create') }}" class="btn btn-primary my-3">Tambah Indikasi Pemeriksaan</a>

         <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>#</th>
                  <th>Nama Indikasi Pemeriksaan</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
               	@foreach( $indikasi as $indikasi1 )
                <tr>
                  <td>{{ $loop->iteration }}</td>
                  <td>{{ $indikasi1->Nama }}</td>
                  <td>
                  	<a href="{{ url('/indikasi/edit') }}/{{$indikasi1->ID}}" class="btn bg-gradient-primary">Edit</a>

                        <form action="{{ url('/indikasi') }}/{{$indikasi1->ID}}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!" >
                            @method('delete')
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-danger">Delete</button> 
                        </form>
                  </td>
                </tr>
                @endforeach
                </tbody>
                
              </table>
            </div>
            <!-- /.card-body -->
          </div>
@endsection