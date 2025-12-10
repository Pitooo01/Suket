@extends('layout.dashboard')

@section('title','Daftar Satuan')

@section('content')
        
        <a href="{{ url('/satuan/create') }}" class="btn btn-primary my-3">Tambah Satuan</a>

         <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th width='5%'>#</th>
                  <th width='10%'>ID Satuan</th>
                  <th width='65%'>Nama</th>
                  <th width='20%'>Aksi</th>
                </tr>
                </thead>
                <tbody>
               	@foreach( $satuan as $satuan1 )
                <tr>
                  <td>{{ $loop->iteration }}</td>
                  <td>{{ $satuan1->SatuanID }}</td>
                  <td>{{ $satuan1->Nama }}</td>
                  <td>
                  	<a href="{{ url('/satuan/edit') }}/{{$satuan1->SatuanID}}" class="btn bg-gradient-primary">Edit</a>

                    <form action="{{ url('/satuan') }}/{{$satuan1->SatuanID}}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!" >
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