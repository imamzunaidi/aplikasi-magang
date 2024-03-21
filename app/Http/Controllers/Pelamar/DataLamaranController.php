<?php

namespace App\Http\Controllers\Pelamar;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\User;
use App\Models\Pendaftaran;
use App\Models\Informasi;
use App\Models\DetailUsers;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use PDF;

class DataLamaranController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $id_users = Auth::user()->id;
        $data = [
            'title' => "Data Lamaran",
            'data_lamaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('pendaftaran.id_users', $id_users)->get(),
        ];

        return view('pelamar/datalamaran')->with('data', $data);
    }

    public function detail($id_pendaftaran)
    {
        $data = [
            'title' => "Detail Data Pendaftaran",
            'detail_pendaftaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('id_pendaftaran', $id_pendaftaran)->first(),
        ];

        return view('pelamar/detaillamaran')->with('data', $data);
    }


    public function detail_informasi($id_informasi){
        $data = [
            'title' => "Detail Informasi ",
            'informasi' => Informasi::where('id_informasi', $id_informasi)->first(),
        ];

        return view('pelamar/detailinformasi')->with('data', $data);
    }

    public function cetak($id_pendaftaran){
        $data = [
            'title' => "Detail Data Pendaftaran",
            'detail_pendaftaran' => Pendaftaran::join('users', 'pendaftaran.id_users', '=', 'users.id')->leftjoin('detail_users', 'detail_users.id_users', '=', 'users.id')->where('id_pendaftaran', $id_pendaftaran)->first(),
        ];


        $pdf = PDF::loadview('pelamar/cetaklamaran', $data);
        //mendownload laporan.pdf
    	return $pdf->stream('laporan.pdf');
    }

    public function setuju($id_pendaftaran){

        $data_update = [
            'status_syarat' => 'setuju',
        ];

        Pendaftaran::where('id_pendaftaran', $id_pendaftaran)->update($data_update);

        return redirect()->back()->with('suc_message', 'Data Berhasil diupdate!');
    }

    public function tidak_setuju($id_pendaftaran){

        $data_update = [
            'status_syarat' => 'tidak setuju',
        ];

        Pendaftaran::where('id_pendaftaran', $id_pendaftaran)->update($data_update);

        return redirect()->back()->with('suc_message', 'Data Berhasil diupdate!');
    }


}
