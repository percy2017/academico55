<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asignatura extends Model
{
    protected $table = 'asignaturas';
    protected $fillable = [
        'codigo', 'nombre', 'periodo_id', 'horas_practicas', 'horas_teoricas', 'descripcion', 'horas_total'
    ];
}
