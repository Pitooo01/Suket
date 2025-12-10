<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    protected $table = 'users';
    protected $fillable = ['name','email','password','remember_token','role'];
}
