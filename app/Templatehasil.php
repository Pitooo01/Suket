<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Templatehasil extends Model
{
    protected $table = 'saran_template';
    protected $fillable = ['ID','SaranMcuID','NAMA'];
}
