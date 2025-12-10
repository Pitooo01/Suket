<?php

namespace App\Http\Controllers;
use App\Manager;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class ImController extends Controller
{
    public function index()
    {
        $data = Manager::all();
        return view('tandatangan.index', compact('data'));
    }

    public function createManager(Request $request)
    {
        $request->validate([
            'nama_manager' => 'required|string',
            'email' => 'nullable|email',
            'status' => 'required|string',
            'ttd_manager' => 'required|image|mimes:jpg,jpeg,png',
        ]);

        $file = $request->file('ttd_manager');

        // Generate nama file hash (otomatis + aman)
        $hashedName = $file->hashName(); // contoh: 5fa7c329d0f7a.png

        // Simpan file ke storage/app/public/ttd_manager
        $file->storeAs('public/ttd_manager', $hashedName);

        // Simpan path ke database (tanpa "public/")
        $ttdPath = 'ttd_manager/' . $hashedName;

        Manager::create([
            'nama' => $request->nama_manager,
            'email' => $request->email,
            'status' => $request->status,
            'ttd' => $ttdPath
        ]);

        return back()->with('success', 'Data tanda tangan berhasil ditambahkan.');
    }

}
