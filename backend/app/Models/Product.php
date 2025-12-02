<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'description', 'price', 'discount_price', 'quantity_in_stock',
        'category_id', 'brand_id', 'img', 'ingredients', 'usage', 'origin', 'capacity', 'rating', 'status'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function cartItems()
    {
        return $this->hasMany(CartItem::class);
    }

    public function wishLists()
    {
        return $this->hasMany(WishList::class);
    }

    public function skinTypes()
    {
        return $this->belongsToMany(SkinType::class, 'product_skin_type');
    }

    public function skinProblems()
    {
        return $this->belongsToMany(SkinProblem::class, 'product_skin_problem');
    }
}
