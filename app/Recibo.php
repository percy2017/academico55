<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recibo extends Model
{
    protected $table = 'recibos';
    protected $fillable = [
        'fecha','numero','concepto', 'monto_numeral', 'monto_literal', 'user_id', 'estudiante_id', 'recibo_id'
    ];
}
