<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('login');

Route::get('/login', [App\Http\Controllers\LoginController::class, 'login'])->name('login');
Route::post('action-login', [App\Http\Controllers\LoginController::class, 'action_login']);
Route::get('registrasi', [App\Http\Controllers\LoginController::class, 'register'])->name('register');
Route::get('lengkapi-profile', [App\Http\Controllers\LoginController::class, 'lengkapi_profile'])->name('register');
Route::post('/insert-register', [App\Http\Controllers\LoginController::class, 'insert_register']);
Route::post('insert-lengkapi-profile', [App\Http\Controllers\LoginController::class, 'insert_lengkapi_profile']);

// pelamar
Route::get('pendaftaran', [App\Http\Controllers\Pelamar\PendaftaranController::class, 'index']);
Route::post('insert-pendaftaran', [App\Http\Controllers\Pelamar\PendaftaranController::class, 'insert']);
Route::get('data-lamaran', [App\Http\Controllers\Pelamar\DataLamaranController::class, 'index']);

Route::get('dashboard', [App\Http\Controllers\Admin\DashboardController::class, 'index']);



Route::get('login', [App\Http\Controllers\LoginController::class, 'index']);
Route::get('logout', [App\Http\Controllers\LoginController::class, 'logout'])->name('logout');

Auth::routes();



Route::middleware('auth')->group(function () {
    Route::get('home', [App\Http\Controllers\HomeController::class, 'index']);
    // Route::get('actionlogout', [App\Http\Controllers\LoginController::class, 'actionlogout']);

    Route::get('data-admin', [App\Http\Controllers\Admin\DataAdminController::class, 'index']);
    Route::post('insert-admin', [App\Http\Controllers\Admin\DataAdminController::class, 'insert']);
    Route::post('update-admin', [App\Http\Controllers\Admin\DataAdminController::class, 'update']);
    Route::get('delete-admin/{id}', [App\Http\Controllers\Admin\DataAdminController::class, 'delete']);

    Route::get('data-profile', [App\Http\Controllers\Admin\DataProfileController::class, 'index']);
    Route::post('update-profile', [App\Http\Controllers\Admin\DataProfileController::class, 'update']);


    Route::get('data-galeri', [App\Http\Controllers\Admin\DataGaleriController::class, 'index']);
    Route::post('insert-galeri', [App\Http\Controllers\Admin\DataGaleriController::class, 'insert']);
    Route::post('update-galeri', [App\Http\Controllers\Admin\DataGaleriController::class, 'update']);
    Route::get('delete-galeri/{id}', [App\Http\Controllers\Admin\DataGaleriController::class, 'delete']);
});

