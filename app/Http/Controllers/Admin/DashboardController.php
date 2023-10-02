<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Models\VwInstitusi;
use App\Models\Institusi;
use App\Models\Webiner;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        // if(Auth::user()->role == 'admin'){

            // $id_users = Auth::user()->id;


            $data = [
                'title' => "Dashboard",
            ];
    
            return view('admin/dashboard')->with('data', $data);
        
        // }

    }
}
