<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    protected $table = 'about';
    protected $primaryKey = 'id_about';
    protected $fillable = ['about_aplikasi','about_lab'];
}
