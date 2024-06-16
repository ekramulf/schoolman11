<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Teachers extends Model
{
    use HasFactory;

    protected $fillable = [
        'deptcode',
        'teachcode',
        'firstname',
        'lastname',
        'gender',
        'img',
        'dob',
        'mobile1',
        'mobile2',
        'email1',
        'email2',
        'address1',
        'address2',
        'spousename',
        'smobile',
        'startdate',
        'enddate',
        'status',
    ];

    public function departments(): BelongsTo
    {
        return $this->belongsTo(Departments::class);
    }
}
