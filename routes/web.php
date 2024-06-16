<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;

Route::get('/', function () {
    return view('welcome');
});

//Route::get('/','TasksController@home');
//Route::get('/create','TasksController@create');
//Route::get('/edit','TasksController@edit');
//Route::get('/delete','TasksController@delete');

//Route::get('/about', 'TasksController@about');

Route::get('/about', function () {
    return view('about');
});

//Route::get("/quem-somos", function() {
//    return view("quem-somos");
//  });

// Interface with Remote Attendance Device
Route::get('/getcourse', [TaskController::class, 'getcourse']);
Route::post('/postat', [TaskController::class, 'postat']);

//User = admin112, admin112@gmail.com Password = admin112abc
//User = admin112, admin112@gmail.com Password = admin112abc