<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movies extends Model
{
    //
    protected $fillable = [
        'title', 'image', 'description',"genre"
    ];
}
