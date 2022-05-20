<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Judul_Materi extends Model
{
    protected $table = 'judul_materi';
    protected $primaryKey = 'id_judul_materi';

    public function Bab(){
        return $this->hasOne('App\Bab');
    }

    public function Materi(){
        return $this->hasOne('App\Materi');
    }
}
