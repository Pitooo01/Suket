<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class AlasanResign extends Model
{
    protected $table = 'alasan_resign';
    protected $fillable = ['AlasanID',
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
            'AlasanID' => [
                'format' => function () {
                    return 'RSG-'.date('Ym').'?';
                },
                'length' => 5
            ]
        ];
    }

}
