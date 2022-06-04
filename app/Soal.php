<?php

namespace App;

use App\Bab;
use Illuminate\Database\Eloquent\Model;

class Soal extends Model
{
    protected $table = 'soal';
    protected $primaryKey = 'id_soal'; 
    protected $fillable = [
        'soal','kunci_jawaban','A','B','C','D'
    ];

    public function Bab(){
        return $this->hasMany('App\Bab');
    }
}
