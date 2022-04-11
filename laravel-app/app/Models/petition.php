<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class petition extends Model
{
    use HasFactory;

    protected $table = 'petition';
    protected $primaryKey = 'id';
}
