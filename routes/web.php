<?php

use Illuminate\Support\Facades\Auth;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('welcome');
});

Route::get('403', function () {
    return view('errors.403');
});
Route::get('419', function () {
    return view('errors.419');
});


//pendaftaran
Route::get('/', [App\Http\Controllers\PendaftaranController::class, 'index']);
Route::get('/events/{idevent}/registrasi', [App\Http\Controllers\PendaftaranController::class, 'daftar']);
Route::post('/', [App\Http\Controllers\PendaftaranController::class, 'store']);

Auth::routes();

Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard');

//pengguna
Route::middleware('role:admin')->resource('pengguna', App\Http\Controllers\UserController::class);

//Events
Route::middleware('role:admin')->resource('events', App\Http\Controllers\EventsController::class);

//pendaftaran
Route::middleware('role:admin')->get('/pendaftaran', [App\Http\Controllers\PendaftaranController::class, 'dashboard']);