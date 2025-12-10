<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HasilMcu extends Model
{
    protected $table = 'hasil_mcu_header';
    protected $fillable = ['RegID',
                           'MEDRECID',
                           'Nama',
                           'JenisKelamin',
                           'TanggalLahir',
                           'Umur',
                           'Perusahaan',
                           'Paket',
                           'KirimKeDokter',
                           'TanggalKirimKeDokter',
                           'VerifikasiDokter',
                           'TanggalVerifikasiDokter',
                           'DiverifOleh',
                           'TanggalPeriksa',
                           'LoginBuat'];
}
