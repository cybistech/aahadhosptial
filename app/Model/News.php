<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $primarykey='id';
    protected $fillable=['title','slug','status','author','meta_description','meta_tags','excerpt','content','tags','featured_image','user_id'];
}
