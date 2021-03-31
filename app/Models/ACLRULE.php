<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ACLRULE extends Model
{
    use HasFactory;

    protected $table='acl_rules';
    protected $fillable=['user_id','access','path','disk','project_id','ass_id'];
}
