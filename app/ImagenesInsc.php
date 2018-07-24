<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImagenesInsc extends Model
{
    protected $table = 'imagenes_insc';
    protected $fillable = [
        'fecha', 'user_id', 'insc_id', 'descripcion','ruta','estado'
    ];
}
