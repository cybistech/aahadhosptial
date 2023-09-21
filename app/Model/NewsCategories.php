<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsCategories extends Model
{
    use HasFactory;
    protected $table='news_categories';
    protected $primary_key='id';
    protected $fillable=['name','slug','status'];

    public function blogs()
    {
        return $this->hasMany(News::class);
    }

}
