<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumentasi extends Model
{
    protected $table = 'dokumentasi';
    protected $primaryKey = 'id_dokumentasi';
    protected $fillable = ['dokumentasi'];
}
