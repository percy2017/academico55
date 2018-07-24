@extends('voyager::master')

@section('css')
@stop
@section('page_header')
@stop
@section('content')
<div class="row">

    <div class="col-xs-12 col-sm-3 col-md-3">
    
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
            <div class="dimmer"></div>
           
            <div class="panel-content">
            
                <i class='voyager-pen'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ url('/admin/inscription/control') }}" class="btn btn-primary btn-lg">CONTROL</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;;">
            <!-- <div class="dimmer"></div> -->
            <div class="panel-content">
                <i class='voyager-settings'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ route('voyager.roles.index') }}" class="btn btn-primary btn-lg">DEUDORES</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
            <!-- <div class="dimer"></div> -->
            <div class="panel-content">
                <i class='voyager-group'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ route('voyager.estudiantes.index') }}" class="btn btn-primary btn-lg">ESTUDIANTES</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
            <!-- <div class="dimer"></div> -->
            <div class="panel-content">
                <i class='voyager-documentation'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ route('voyager.mensualidades.index') }}" class="btn btn-primary btn-lg">MENSUALIDADES</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
            <!-- <div class="dimer"></div> -->
            <div class="panel-content">
                <i class='voyager-receipt'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ route('voyager.recibos.index') }}" class="btn btn-primary btn-lg">RECIBOS</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
            <!-- <div class="dimer"></div> -->
            <div class="panel-content">
                <i class='voyager-puzzle'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ route('voyager.inscripciones.index') }}" class="btn btn-primary btn-lg">INSCRIPCIÒNES</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
            <!-- <div class="dimer"></div> -->
            <div class="panel-content">
                <i class='voyager-credit-cards'></i>
                <!-- <h4>Usuarios</h4> -->
                <!--    <p></p> -->
                <a href="{{ route('voyager.pagos.index') }}" class="btn btn-primary btn-lg">PAGOS</a>
            </div>
        </div>
    </div>

</div>
@stop

@section('javascript')
@stop