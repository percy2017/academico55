<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InscEstado extends Model
{
    protected $table = 'insc_estados';
    protected $fillable = [
        'fecha', 'user_id', 'insc_id', 'observacion'
    ];
}
