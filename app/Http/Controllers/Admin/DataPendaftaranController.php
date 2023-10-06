<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Models\User;
use App\Models\Pendaftaran;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;

class DataPendaftaranController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $data = [
            'title' => "Data Pendaftaran",
            'data_pendaftaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('status_pendaftaran', 'pengajuan')->get(),
        ];

        return view('admin/datapendaftaran')->with('data', $data);
    }

    public function detail($id_pendaftaran)
    {
        $data = [
            'title' => "Detail Data Pendaftaran",
            'detail_pendaftaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('id_pendaftaran', $id_pendaftaran)->first(),
        ];

        return view('admin/detailpendaftaran')->with('data', $data);
    }


    public function diterima($id_pendaftaran){

        $data = [
            'status_pendaftaran' => 'diterima',
        ];

        Pendaftaran::where('id_pendaftaran', $id_pendaftaran)->update($data);

        return redirect('data-pendaftaran')->with('suc_message', 'Data Berhasil diupdate!');
    }

    public function tidak_diterima($id_pendaftaran){

        $data = [
            'status_pendaftaran' => 'tidak diterima',
        ];

        Pendaftaran::where('id_pendaftaran', $id_pendaftaran)->update($data);

        return redirect('data-pendaftaran')->with('suc_message', 'Data Berhasil diupdate!');
    }

}
