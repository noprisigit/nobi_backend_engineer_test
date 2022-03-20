<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionTable extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('transaction', function (Blueprint $table) {
      $table->integer('id')->autoIncrement();
      $table->string('trx_id')->default('');
      $table->bigInteger('user_id')->default('0');
      $table->decimal('amount', 10, 8)->default('0');
      $table->unique('trx_id');
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
    Schema::dropIfExists('transaction');
  }
}
