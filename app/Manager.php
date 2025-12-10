<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manager extends Model
{
    protected $table = 'managers';

    protected $fillable = [
        'nama',
        'status',
        'email',
        'ttd'
    ];
}
