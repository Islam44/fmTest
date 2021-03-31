<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Node
 * @package App\Models
 */
class Node
{
    public $text;
    public $children;
    public $path;
    public $type;

//    public function setProperty($name, $value)
//    {
//        $this->$name=$value;
//    }
}
