<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
  use HasFactory;

  /**
   * The table associated with the model.
   *
   * @var string
   */
  protected $table = 'price';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = ['name', 'ticker', 'coin_id', 'code', 'exchange', 'invalid', 'record_time', 'usd', 'idr', 'created_at', 'updated_at'];

  public $timestamps = false;
}
