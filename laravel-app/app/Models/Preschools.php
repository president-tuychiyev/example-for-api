<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Preschools extends Model
{
    use HasFactory;

    protected $table = 'preschools';
    protected $primaryKey = 'id';
}
