<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $fillable = [ 'package_type_id', 'normal_price', 'weekend_price', 'holiday_price', 'created_by' ];

    public function coupons()
    {
        return $this->belongsToMany(Coupons::class, 'package_has_coupons');
    }

    public function details()
    {
        return $this->hasMany(PackageDetail::class);
    }
}