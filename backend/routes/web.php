<?php

use App\Http\Controllers\Admin\Auth\LoginController;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login.post');


Route::controller(App\Http\Controllers\Admin\Dashboard\DashboardController::class)
    ->prefix('/dashboard')
    ->as('dashboard.')
    ->middleware('auth')
    ->group(function () {
        Route::get('/', 'index')->name('index');
    });
