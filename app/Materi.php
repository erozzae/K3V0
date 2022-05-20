<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Materi extends Model
{
    protected $table = 'materi';
    protected $primaryKey = 'id_materi';

    public function Judul_Materi(){
        return $this->hasOne('App\Judul_Materi');
    }

    public function Bab(){
        return $this->hasOne('App\Bab');
    }
}
