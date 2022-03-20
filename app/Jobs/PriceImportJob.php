<?php

namespace App\Jobs;

use App\Imports\PriceImport;
use GuzzleHttp\Psr7\Request;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Maatwebsite\Excel\Facades\Excel;

class PriceImportJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $request;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($request)
    {
      $this->request = $request;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
      Excel::import(new PriceImport(), $this->request->file('file'));
    }
}
