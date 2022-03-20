<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
  use HasFactory;

  /**
   * The table associated with the model.
   *
   * @var string
   */
  protected $table = 'transaction';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = ['trx_id', 'user_id', 'amount'];
}
