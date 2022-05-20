<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bab extends Model
{
    // protected $table = 'forum';
    
    // public function User(){
    //     return $this->belongsTo('App\User','user_id','id');
    // }

    // public function Komentar()
    // {
    //     return $this->hasMany('App\Komentar');
    // }

    protected $table = 'bab';
    protected $primaryKey = 'id_bab';
    
    public function Judul_Materi(){
        return $this->hasMany('App\Judul_Materi');
    }

    public function Materi(){
        return $this->hasMany('App\Materi');
    }

}
