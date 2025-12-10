<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class Supplier extends Model
{
    protected $table = 'supplier';
    protected $fillable = ['ID',
                           'SupplierID',
                           'Nama',
                           'Alamat',
                           'Notelp',
                           'PenanggungJawab',
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
            'SupplierID' => [
                'format' => function () {
                    return 'SUP-'.date('Ym').'?';
                },
                'length' => 5
            ]
        ];
    }
}
