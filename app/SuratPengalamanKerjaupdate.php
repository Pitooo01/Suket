<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class SuratPengalamanKerja extends Model
{
    protected $table = 'surat_pengalaman_kerja';
    protected $fillable = [
        'ID',
        'SuketPengalamanID',
        'NIK',
        'NamaKaryawan',
        'Bagian',
        'TempatLahir',
        'TanggalLahir',
        'JenisKaryawanID',
        'TanggalMasuk',
        'TanggalKeluar',
        'JabatanAkhir',
        'jabatanakhireng',
        'NA',
        'SEO',
        'Email',
        'StatusID',
        'TanggalKirim',
        'TanggalSetujui'
    ];
}
