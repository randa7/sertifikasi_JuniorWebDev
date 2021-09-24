<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class modelRole extends Model
{
    use HasFactory;

    protected $table = 'model_has_roles';

    protected $fillable = [
        'role_id',
        'model_id',
    ];

    public function roles(){
        return $this->hasMany('App\Models\Role');
    }

    public function users(){
        return $this->hasMany('App\Models\User');
    }
}
