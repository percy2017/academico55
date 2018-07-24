<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mensualidade extends Model
{
    protected $table = 'mensualidades';
    protected $fillable = [
        'num_mens', 'monto', 'user_id', 'fecha_inicio', 'fecha_final', 'estado', 'observaciones', 'monto', 'fecha_pago', 'inscripcion_id','recibo_id'
    ];
}
