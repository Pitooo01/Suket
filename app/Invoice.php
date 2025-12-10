<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class Invoice extends Model
{
    //

    protected $table = 'perusahaan';
    protected $fillable = ['id',
                           'Nama'];

    use AutoNumberTrait;

    /**
     * Return the autonumber configuration array for this model.
     *
     * @return array
     */
    public function getAutoNumberOptions()
    {
        return [
            'PerusahaanID' => [
                'format' => function () {
                    return 'PRSH-'.date('Ym').'?';
                },
                'length' => 5
            ]
        ];
    }


}
