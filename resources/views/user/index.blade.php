@extends('layout.dashboard')

@section('title','Daftar Pengguna')

@section('content')
        
        <a href="{{ url('/user/create') }}" class="btn btn-primary my-3">Tambah Data Pengguna</a>
<div class="card">
    <div class="card-body">
        <table id="example1" class="table table-bordered table-striped">
            
            <thead>
                <tr>
                    <th width="2px">#</th>
                    <th >Nama</th>
                    <th >Email</th>
                    <th >Akses</th>
                    <th >Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach( $users as $user )
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->namarole }}</td>
                    <td>
                    @if(auth()->user()->role == 'admin')
                        <a href="{{ url('/user/edit') }}/{{$user->remember_token}}" class="btn bg-gradient-primary">Edit</a>
                        <form action="{{ url('/user') }}/{{$user->remember_token}}" method="post" class="d-inline" onsubmit="return confirm('Please confirm you want to delete!" >
                            @method('delete')
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-danger">Delete</button> 
                        </form>
                    @endif
                    -
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection