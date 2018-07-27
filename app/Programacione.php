<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Programacione extends Model
{
    protected $table = 'programaciones';
    protected $fillable = [
        'fecha', 'asignatura_id', 'observacion', 'user_id','educador_id', 'estado', 'horario_id', 'nota_estado'
    ];
}
