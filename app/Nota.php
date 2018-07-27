<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Nota extends Model
{
    protected $table = 'notas';
    protected $fillable = [
        'programacion_id', 'nota', 'user_id', 'insc_id'
        ];
}
