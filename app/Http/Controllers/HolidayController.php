<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Holiday;

class HolidayController extends Controller
{
    public function index()
    {
        $holidays = Holiday::get(['name as title', 'date', 'type']);
        return view('holiday.index', compact('holidays'));
    }
}
