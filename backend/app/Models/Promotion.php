<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promotion extends Model
{
    use HasFactory;

    protected $fillable = ['code', 'discount_percentage', 'discount_price', 'start_date', 'end_date', 'status'];

    public function orders()
    {
        return $this->hasMany(Order::class);
    }
}
