@extends('voyager::master')

@section('css')
@stop
@section('page_header')
@stop
@section('content')
<div class="row">

    <div class="col-xs-12 col-sm-offset-3 col-sm-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('/storage/modulos/AowW44tJW0F9YRoj3CGJOFeSt5gE0687vjlDlN83.jpeg') }}');">
            <!-- <div class="dimmer"></div> -->
            <div class="panel-content">
                <i class='voyager-data'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ url('/admin/programming/programacion_materias') }}" class="btn btn-primary btn-lg">CONTROL</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">

        <div class="list-group" style="padding: 10px;">
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                <!-- <span class="badge badge-primary">0</span> -->
                <h6 class="mb-1"><i class="voyager-bread"></i> CRUD</h6>
            </a>
            <a href="{{ route('voyager.carreras.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_car }}</span>
                <h6 class="mb-1"><i class="voyager-study"></i> CARRERAS</h6>
            </a>
            <a href="{{ route('voyager.asignaturas.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_asi }}</span>
                <h6 class="mb-1"><i class="voyager-tag"></i> ASIGNATURAS</h6>
                
            </a>
            <a href="{{ route('voyager.horarios.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_hor }}</span>
                <h6 class="mb-1"><i class="voyager-calendar"></i> HORARIOS</h6>
            </a>
        </div>

    </div>


</div>
@stop

@section('javascript')
@stop