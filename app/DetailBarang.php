<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailBarang extends Model
{
    protected $table = 'proyek_detail';
    protected $fillable = ['id',
                           'KodeProyek',
                           'BarangID',
                           'Satuan',
                           'Jumlah',
                           'Harga',
                           'TanggalBuat',
                           'NA'];
}
