@extends('layout.dashboard')

@section('title','Daftar Saran Hasil Pemeriksaan')

@section('content')
        
        <a href="{{ url('/hasiltemplate/create') }}" class="btn btn-primary my-3">Tambah Saran Hasil Pemeriksaan</a>

         <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>#</th>
                  <th>Saran MCU ID</th>
                  <th>Nama</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
               	@foreach( $templatehasil as $templatehasil1 )
                <tr>
                  <td>{{ $loop->iteration }}</td>
                  <td>{{ $templatehasil1->SaranMcuID }}</td>
                  <td>{{ $templatehasil1->NAMA }}</td>
                  <td>
                  	<a href="{{ url('/hasiltemplate/edit') }}/{{$templatehasil1->ID}}" class="btn bg-gradient-primary">Edit</a>

                    <form action="{{ url('/hasiltemplate') }}/{{$templatehasil1->ID}}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!" >
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