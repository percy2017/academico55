<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inscripcione extends Model
{
    protected $table = 'inscripciones';
    protected $fillable = [
        'fecha_insc', 'user_id', 'carrera_id', 'tipo_id','fecha_inicio', 'estudiante_id', 'horario_id', 'observaciones', 'monto', 'concluido'
    ];
}
