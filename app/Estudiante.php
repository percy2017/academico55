<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estudiante extends Model
{
    protected $table = 'estudiantes';
    protected $fillable = [
        'nombres', 'apellidos_paterno', 'apellidos_materno', 'documento_id', 'num_documento', 'telefono', 'telefono2', 'avatar', 'direccion', 'user_id', 'sexualidad_id', 'habilitado'
    ];
}
