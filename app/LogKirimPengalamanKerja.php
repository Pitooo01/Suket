<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogKirimPengalamanKerja extends Model
{
    protected $table = 'log_kirim_pengalaman_kerja';
    protected $fillable = ['ID',
                           'SuketPengalamanID',
                           'NamaKaryawan',
                           'Email',
			   'SEO',
                           'TanggalKirim'];
}
