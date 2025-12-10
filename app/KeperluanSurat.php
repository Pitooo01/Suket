<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class KeperluanSurat extends Model
{
    protected $table = 'keperluan_surat';
    protected $fillable = ['KeperluanSuratID',
                           'Nama',
                           'NA'];

    use AutoNumberTrait;

    /**
     * Return the autonumber configuration array for this model.
     *
     * @return array
     */
    public function getAutoNumberOptions()
    {
        return [
            'KeperluanSuratID' => [
                'format' => function () {
                    return 'KPS-'.date('Ym').'?';
                },
                'length' => 5
            ]
        ];
    }

}
