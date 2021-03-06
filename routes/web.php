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
Route::post('/register','Auth\RegisterController@register')->name('register');

Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();   

    Route::get('/security','SecurityController@index');

    Route::get('/programming','ProgrammingController@index');
    Route::get('/programming/programacion_materias','ProgrammingController@prog_index')->name('prog_index');
    Route::get('/programming/programacion_materias/create','ProgrammingController@prog_create');
    Route::post('/programming/programacion_materias/store','ProgrammingController@prog_store');
    Route::get('/programming/programacion_materias/show/{id}','ProgrammingController@prog_show');
    Route::get('/programming/programacion_materias/show/estudiantes/listado/{prog_id}','ProgrammingController@prog_show_estudiantes');
    Route::get('/programming/programacion_materias/show/estudiantes/add/{insc_id}/{prog_id}','ProgrammingController@prog_show_est_add');
    Route::get('/programming/programacion_materias/show/estudiantes/delete/{insc_id}/{prog_id}','ProgrammingController@prog_show_est_delete');
    Route::get('/programming/programacion_materias/show/estudiantes/search/{criterio}/{prog_id}','ProgrammingController@prog_estudiantes_buscar');
 
    Route::get('/notes','NotesController@index');
    Route::get('/notes/index','NotesController@notas_index')->name('notas_index');
    Route::get('/notes/show/{id}','NotesController@notas_show');
    Route::get('/notes/add/{id}','NotesController@notas_add');
    Route::get('/notes/add/notas/{prog_id}/{insc_id}/{nota}','NotesController@notas_add_notas');

    Route::get('/inscription','InscriptionController@index');
    Route::get('/inscription/control','InscriptionController@control_index')->name('control_index');
    Route::get('/inscription/control/deudores','InscriptionController@control_deudores');
    Route::get('/inscription/control/create','InscriptionController@control_create');
    Route::post('/inscription/control/storage','InscriptionController@control_storage');
    Route::post('/inscription/control/search','InscriptionController@control_search');
    Route::get('/inscription/control/estado','InscriptionController@control_estado');
    Route::get('/inscription/control/show/{id}','InscriptionController@control_show');
    Route::post('/inscription/control/show/mensualidades/storage','InscriptionController@control_mensualidad_storage');
    Route::get('/inscription/control/show/pagos/{id}','InscriptionController@control_pagos');
    Route::post('/inscription/control/show/pagos/storage','InscriptionController@control_pagos_storage');
    Route::get('/inscription/control/recibo/{id}','InscriptionController@control_recibo');
    Route::get('/inscription/control/pdf/{id}','InscriptionController@control_pdf');
    Route::get('/inscription/control/imagenes/{id}','InscriptionController@control_imagenes');
    Route::post('/inscription/control/imagenes/add','InscriptionController@control_imagenes_add');
    Route::get('/inscription/control/imagenes/delete/{id}/{isnc}','InscriptionController@control_imagenes_delete');
    Route::get('/inscription/control/notas/{insc}','InscriptionController@control_notas')->name('control_notas');

});


//Clear Cache facade value:
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});

//Reoptimized class loader:
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});

//Route cache:
Route::get('/route-cache', function() {
    $exitCode = Artisan::call('route:cache');
    return '<h1>Routes cached</h1>';
});

//Clear Route cache:
Route::get('/route-clear', function() {
    $exitCode = Artisan::call('route:clear');
    return '<h1>Route cache cleared</h1>';
});

//Clear View cache:
Route::get('/view-clear', function() {
    $exitCode = Artisan::call('view:clear');
    return '<h1>View cache cleared</h1>';
});

//Clear Config cache:
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Clear Config cleared</h1>';
});