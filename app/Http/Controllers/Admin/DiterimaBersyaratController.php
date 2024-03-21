<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Models\User;
use App\Models\Pendaftaran;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;

class DiterimaBersyaratController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $data = [
            'title' => "Data Diterima Bersyarat",
            'data_pendaftaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('status_pendaftaran', 'diterima bersyarat')->get(),
        ];

        return view('admin/dataterimabersyarat')->with('data', $data);
    }

    public function detail($id_pendaftaran)
    {
        $data = [
            'title' => "Detail Data Pendaftaran",
            'detail_pendaftaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('id_pendaftaran', $id_pendaftaran)->first(),
        ];

        return view('admin/detailbersyarat')->with('data', $data);
    }

}
