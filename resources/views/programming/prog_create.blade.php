<?php $permiso = Voyager::can('browse_programaciones') ?>
@if($permiso)
    @extends('voyager::master')

    @section('page_header')
    <div class="container-fluid">
        <div class="row">
            <h1 class="page-title">
                <i class="voyager-logbook"></i>
                    Nueva Programaciones
            </h1>
         </div>
    </div>
    @stop

    @section('content')
    <div class="page-content browse container-fluid">	
        @include('voyager::alerts')
        <div class="row">
            <form action="{{ url('/admin/programming/programacion_materias/store') }}" method="POST">
            {{ csrf_field() }}
                <div class="col-xs-12 col-sm-offset-2 col-sm-8">

                    <div class="panel panel-bordered">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Materia o Asignatura
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                
                                <select class="form-control select2" name="asignatura_id">
                                    @foreach($asignaturas as $item)
                                        <option value="{{ $item->id }}">{{ $item->codigo }} - {{ $item->nombre }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-bordered">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Educadores o Maestros
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                
                                <select class="form-control select2" name="educador_id">
                                    @foreach($educadores as $item)
                                        <option value="{{ $item->id }}">{{ $item->nombres }}, {{ $item->apellidos }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-bordered">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Horarios
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                
                                <select class="form-control select2" name="horario_id">
                                    @foreach($horarios as $item)
                                        <option value="{{ $item->id }}">{{ $item->nombre }} - {{ $item->hora_inicio }} - {{ $item->hora_fin }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-bordered">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Obervación
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <textarea name="observaciones" id="" cols="30" rows="5" class="form-control"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="panel">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary" onclick="return confirm('Esta seguro de guardar?')">
                                        Guardar Nueva Programación
                                    </button>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            
        </div>
    </div>
    @stop

    @section('css')
    @stop
    @section('javascript')

    @stop

@else

@endif