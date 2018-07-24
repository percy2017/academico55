<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{
    protected $table = 'pagos';
    protected $fillable = [
        'fecha_pago', 'mensualidad_id', 'user_id', 'monto', 'observaciones', 'recibo_id'
    ];
}
