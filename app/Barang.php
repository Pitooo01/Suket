<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class Barang extends Model
{
    protected $table = 'barang';
    protected $fillable = ['BarangID',
                           'Nama',
                           'Satuan',
                           'Jumlah',
                           'HargaBeli',
                           'MarkUP',
                           'HargaJual',
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
            'BarangID' => [
                'format' => function () {
                    return 'BRG-'.date('Ym').'?';
                },
                'length' => 5
            ]
        ];
    }

}
