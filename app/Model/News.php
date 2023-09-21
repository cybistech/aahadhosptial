<?php

namespace App\Model;

use App\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $primarykey='id';
    protected $fillable=['title','slug','status','author','meta_description','meta_tags','excerpt','content','tags','featured_image','user_id'];


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function category()
    {
        return $this->belongsTo(NewsCategories::class);
    }
}


