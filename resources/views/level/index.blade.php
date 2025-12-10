@extends('layout.dashboard')

@section('title','Daftar Level User')

@section('content')
        
        <a href="{{ url('/level/create') }}" class="btn btn-primary my-3">Tambah Level Pengguna</a>

        <table id="example1" class="table table-bordered table-hover">
            
            <thead>
                <tr>
                    <th width="2px">#</th>
                    <th >Nama</th>
                    <th >Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach( $levels as $level )
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $level->nama }}</td>
                    <td>
                        <a href="{{ url('/level/edit') }}/{{$level->remember_token}}" class="btn bg-gradient-primary">Edit</a>
                        
                        <form action="{{ url('/level') }}/{{$level->remember_token}}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!" >
                            @method('delete')
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-danger">Delete</button> 
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
@endsection