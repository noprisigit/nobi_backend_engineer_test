<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TransactionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $values = [
        [
          'trx_id' => 'a',
          'user_id' => 1,
          'amount' => 0.01000000,
          'created_at' => '2022-03-07 09:55:44',
          'updated_at' => '2022-03-07 09:55:44'
        ],
        [
          'trx_id' => 'B',
          'user_id' => 1,
          'amount' => 0.02000000,
          'created_at' => '2022-03-07 09:55:44',
          'updated_at' => '2022-03-07 09:55:44'
        ]
      ];

      DB::table('transaction')->insert($values);
    }
}
