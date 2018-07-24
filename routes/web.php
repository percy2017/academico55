<?php

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
Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::get('/security','SecurityController@index');
    Route::get('/programming','ProgrammingController@index');
    Route::get('/notes','NotesController@index');

    Route::get('/inscription','InscriptionController@index');

    Route::get('/inscription/control','InscriptionController@control_index');
    Route::get('/inscription/control/create','InscriptionController@control_create');
    Route::post('/inscription/control/storage','InscriptionController@control_storage');
    Route::post('/inscription/control/search','InscriptionController@control_search');
    Route::get('/inscription/control/show/{id}','InscriptionController@control_show');
    Route::post('/inscription/control/show/mensualidades/storage','InscriptionController@control_mensualidad_storage');
    Route::get('/inscription/control/show/pagos/{id}','InscriptionController@control_pagos');
    Route::post('/inscription/control/show/pagos/storage','InscriptionController@control_pagos_storage');
    Route::get('/inscription/control/recibo/{id}','InscriptionController@control_recibo');
    Route::get('/inscription/control/pdf/{id}','InscriptionController@control_pdf');
    Route::get('/inscription/control/imagenes/{id}','InscriptionController@control_imagenes');
    Route::post('/inscription/control/imagenes/add','InscriptionController@control_imagenes_add');
    Route::get('/inscription/control/imagenes/delete/{id}/{isnc}','InscriptionController@control_imagenes_delete');
    

    
});
