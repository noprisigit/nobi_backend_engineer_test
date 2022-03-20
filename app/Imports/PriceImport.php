<?php

namespace App\Imports;

use App\Models\Price;
use App\Models\User;
use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithStartRow;

class PriceImport implements ToModel, WithBatchInserts, WithChunkReading, WithHeadingRow, WithStartRow, ShouldQueue
{

  /**
   * @param array $row
   *
   * @return \Illuminate\Database\Eloquent\Model|null
   */
  public function model(array $row)
  {
    return new Price([
      'name' => $row['name'],
      'ticker' => $row['ticker'],
      'coin_id' => $row['coin_id'],
      'code' => $row['code'],
      'exchange' => $row['exchange'],
      'invalid' => $row['invalid'],
      'record_time' => Carbon::createFromTimestamp($row['record_time']),
      'usd' => $row['usd'],
      'idr' => $row['idr'],
      'created_at' => Carbon::create($row['created_at']),
      'updated_at' => Carbon::create($row['updated_at'])
    ]);
  }

  public function headingRow(): int
  {
    return 1;
  }

  public function startRow(): int
  {
    return 2;
  }

  public function batchSize(): int
  {
    return 1000;
  }

  public function chunkSize(): int
  {
    return 1000;
  }
}
