<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBalanceTable extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('balance', function (Blueprint $table) {
      $table->integer('id')->autoIncrement();
      $table->bigInteger('user_id')->default('0');
      $table->decimal('amount_available', 10, 8)->default('0');
      $table->index('user_id');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists('balance');
  }
}
