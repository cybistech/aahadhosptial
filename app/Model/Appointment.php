<?php

namespace App\Model;
use App\User;
use App\Model\DepartService;
use App\Model\Department;
use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
    protected $table = 'appointment';
    protected $primaryKey = 'id';

      public function doctors()
    {
        return $this->hasone(User::class, 'id', 'doc_id');
    }
     public function services()
    {
        return $this->hasone(DepartService::class, 'id', 'service_id');
    }
     public function department()
    {
        return $this->hasone(Department::class, 'id', 'department_id');
    }

    public function referdocto(){
       return $this->hasone(User::class, 'id', 'refer_to');
    }

    public function referdocby(){
       return $this->hasone(User::class, 'id', 'refer_by');
    }
}
?>
