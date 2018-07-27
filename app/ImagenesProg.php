<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImagenesProg extends Model
{
    protected $table = 'imagenes_prog';
    protected $fillable = [
        'fecha', 'user_id', 'prog_id', 'descripcion','ruta'
    ];
}
