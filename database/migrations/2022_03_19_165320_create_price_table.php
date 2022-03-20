<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePriceTable extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('price', function (Blueprint $table) {
      $table->id();
      $table->string('name');
      $table->string('ticker');
      $table->integer('coin_id');
      $table->string('code');
      $table->string('exchange');
      $table->integer('invalid');
      $table->integer('record_time');
      $table->double('usd');
      $table->double('idr');
      $table->dateTime('created_at');
      $table->dateTime('updated_at');
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists('price');
  }
}
