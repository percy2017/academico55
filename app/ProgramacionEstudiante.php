<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProgramacionEstudiante extends Model
{
    protected $table = 'programacion_estudiante';
    protected $fillable = [
        'programacion_id', 'inscripciones_id'
    ];
}
