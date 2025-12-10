<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Alert;
use App\Pengguna;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = DB::table('users')
                ->join('role', 'users.role', '=', 'role.role_id')
                ->select('users.*', 'role.nama as namarole')
                ->where('users.NA', 'N')
                ->get();
        return view('user.index', ['users' => $users]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $role = DB::table('role')
                ->select('role_id', 'nama')
                ->where('na','N')
                 ->get();
        
        return view("user.tambah", compact('role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'namalengkap'   => 'required',
            'email'         => 'email',
            'password'      => 'min:6|required_with:repassword|same:repassword',
            'repassword'    => 'min:6',
            'leveltambah'   => 'required'
        ]);

        $exist = DB::table('users')
                ->where('email','=', $request->email)
                ->first();
        if($exist){
            alert()->warning('Peringatan','Email sudah ada');
            return redirect('/user/create');
            
        }else{
            
            Pengguna::create([

            'name'              => $request->namalengkap,
            'email'             => $request->email,
            'role'              => $request->leveltambah,
            'password'          => bcrypt($request->password),
            'remember_token'    => str_random(60)

            ]);
            alert()->success('Sukses',$request->namalengkap.' berhasil diinput');
            return redirect('/user');
        }

        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ab = DB::table('users')
                ->select('name',
                         'email',
                         'role',
                         'remember_token')
                ->where('remember_token','=', $id)
                ->get();
                //die($usershow);
        $role = DB::table('role')
                ->select('role_id',
                         'nama')
                ->where('na','N')
                ->get();
        return view('user.ubah', compact('ab','role'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //dd($request->all());
        
            Pengguna::where('remember_token', $id)
                  ->update([
                    'name'  => $request->namalengkap,
                    'email' => $request->email,
                    'role'  => $request->level
                  ]);
        
        
                  alert()->success('Sukses','Data berhasil diedit');
                  return redirect('/user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Pengguna::where('remember_token', $id)
                  ->update([
                    'NA'  => 'Y'
                  ]);
                  alert()->message('Sukses','Data berhasil dihapus');
                  return redirect('/user');
    }
}
