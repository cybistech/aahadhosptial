<?php

namespace App\Model;
use App\Model\Gallery;
use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $table = 'album';
    protected $primaryKey = 'id';

     public function gallerydata()
    {
        return $this->hasmany(Gallery::class, 'album_id', 'id');
    }
}
?>
