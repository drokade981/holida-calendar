<?php

namespace App\Console\Commands;
use Illuminate\Support\Facades\Http;
use Illuminate\Console\Command;
use App\Models\Holiday;

class GetHolidays extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:get-holidays';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Get holidays from Calendarific Api';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $apiKey = config('constant.holiday_api');
        $country = 'IN';  // IN for India
        $year = now()->year;

        $response = Http::get("https://calendarific.com/api/v2/holidays", [
            'api_key' => $apiKey,
            'country' => $country,
            'year' => $year,
        ]);

        if ($response->successful()) {
            $holidays = $response->json()['response']['holidays'];
            // dd($holidays);
            foreach ($holidays as $holiday) {
                Holiday::updateOrCreate(
                    ['name' => $holiday['name'], 'date' => date('Y-m-d',strtotime($holiday['date']['iso']))],
                    ['type' => $holiday['type'][0]]
                );
            }
            $this->info('Holidays fetched and added successfully.');
        } else {
            $this->error('Failed to get holidays.');
        }
    }
}
