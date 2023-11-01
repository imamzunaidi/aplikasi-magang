<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;
use App\Models\User;
use App\Models\DetailUsers;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function index()
    {
        // if (Auth::check()) {
        //     return redirect('home');
        // }else{
            return view('login');
        // }
    }

    public function actionlogin(Request $request)
    {
        $data = [
            'email' => $request->input('email'),
            'password' => $request->input('password'),
        ];

        if (Auth::Attempt($data)) {
            return redirect('home');
        }else{
            Session::flash('error', 'Email atau Password Salah');
            return redirect('/');
        }
    }

    public function action_login(Request $request)
    {
        // dd($request);
        $data = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        // dd(Auth::attempt($data));

        if(Auth::attempt($data)){
            $request->session()->regenerate();

            if(Auth::user()->role == 'admin'){
                $id_users =  Auth::user()->id;
                $cek_data = User::where('id', $id_users)->count();

               
                if($cek_data > 0){

                    if(Auth::user()->role == '0'){
                        Auth::logout();
                        $request->session()->invalidate();
                        $request->session()->regenerateToken();
                        return redirect()->back()->with('err_message', 'Akun Dinonaktifkan !!');
                        return redirect('login');
                    }else{
                        
                        return redirect('dashboard');
                    }
                }else{
                    return redirect('lengkapi-profile');
                }
            }else{
                if(Auth::user()->status == '0'){
                    return redirect('lengkapi-profile');
                }else{
                    return redirect('');
                }
            }
            // else if(Auth::user()->hak_akses == 'pengguna'){
            //     if(Auth::user()->aktiv == 0 || Auth::user()->aktiv == 0){
            //         Auth::logout();
            //         $request->session()->invalidate();
            //         $request->session()->regenerateToken();
            //         return redirect()->back()->with('err_message', 'Akun Dinonaktifkan !!');
            //         return redirect('login');
            //     }else{
                    
            //         return redirect('dashboard-pengguna');
            //     }
            // }else{
            //     if(Auth::user()->aktiv == 0 || Auth::user()->aktiv == 0){
            //         Auth::logout();
            //         $request->session()->invalidate();
            //         $request->session()->regenerateToken();
            //         return redirect()->back()->with('err_message', 'Akun Dinonaktifkan !!');
            //         return redirect('login');
            //     }else{
                    
            //         return redirect('dashboard-admin');
            //     }
            // }   
        }else{

            return redirect()->back()->with('err_message', 'Email dan Password Salah !!');
        }

    }


    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();


        return redirect('login');
    }

    public function register()
    {
        
        return view('auth.register');
    }

    public function insert_register(Request $request)
    {

        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'no_telp' => $request->no_telp,
            'alamat' => $request->alamat,
            'status' => '0',
            'password' => Hash::make($request->password),
            'role' => 'pelamar',
            'created_at' => Carbon::now(),
        ];


        User::insert($data);

        return redirect('login')->with('suc_message', 'Data Berhasil register!');

        // return redirect()->route('login');
    }

    public function lengkapi_profile()
    {
      
        return view('auth.lengkapiprofile');
    }


    public function profile()
    {
        $data = [
            'profile' => User::join('detail_users', 'detail_users.id_users', '=', 'users.id')->where('id',Auth::user()->id)->first(),
        ];

        return view('auth.profile')->with('data', $data);
    }


    public function insert_lengkapi_profile(Request $request)
    {
     
        $data = [
            'nim' => $request->nim,
            'nik' => $request->nik,
            'jenis_kelamin' => $request->jenis_kelamin,
            'agama' => $request->agama,
            'tanggal_lahir' => $request->tanggal_lahir,
            'tempat_lahir' => $request->tempat_lahir,
            'alamat_lengkap' => $request->alamat_lengkap,
            'nama_lengkap' => $request->nama_lengkap,
            'id_users' => Auth::user()->id,
            'created_at' => Carbon::now(),
        ];

        DetailUsers::insert($data);

        $update = [
            'status' => '1'
        ];
        User::where('id', Auth::user()->id)->update($update);

        return redirect('')->with('suc_message', 'Data Berkas Lengkap!');

        // return redirect()->route('login');
    }

    public function update_profile(Request $request){

        $id_users =  Auth::user()->id;

        $data = [
            'nim' => $request->nim,
            'nik' => $request->nik,
            'jenis_kelamin' => $request->jenis_kelamin,
            'agama' => $request->agama,
            'tanggal_lahir' => $request->tanggal_lahir,
            'tempat_lahir' => $request->tempat_lahir,
            'alamat_lengkap' => $request->alamat_lengkap,
            'nama_lengkap' => $request->nama_lengkap,
        ];

        DetailUsers::where('id_users', $id_users)->update($data);

        $data_users = [
            'email' => $request->email,
            'no_telp' => $request->no_telp,
            'password' => Hash::make($request->password),
        ];

        User::where('id', $id_users)->update($data_users);

        return redirect()->back()->with('suc_message', 'Data Berhasil diupdate!');

    }

}