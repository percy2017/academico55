@extends('voyager::master')

@section('css')
@stop
@section('page_header')
@stop
@section('content')
<div class="row">

 
     <div class="col-xs-12 col-sm-offset-3 col-sm-3">
        <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('/storage/modulos/gdBGl0SIh9p8jAIOPitYDzIR6EG2gfIrlJd5Soab.jpeg') }}');">
            <!-- <div class="dimer"></div> -->
            <div class="panel-content">
                <i class='voyager-data'></i>
                <!-- <h4>CONTROL</h4> -->
                <!--    <p></p> -->
                <!-- <a href="" class="btn btn-primary btn-lg">CONTROL</a> -->
                <a href="{{  url('/admin/inscription/control') }}" class="btn btn-primary">CONTROL</a>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3">

        <div class="list-group" style="padding: 5px;">
            <a href="{{ route('voyager.inscripciones.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_ins }}</span>
                <h5 class="mb-1"><i class="voyager-pen"></i> INSCRIPCIÒNES</h5>
            </a>
            <a href="{{ route('voyager.mensualidades.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_men }}</span>
                <h5 class="mb-1"><i class="voyager-news"></i> MENSUALIDADES</h5>
                
            </a>
            <a href="{{ route('voyager.pagos.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_pag }}</span>
                <h5 class="mb-1"><i class="voyager-dollar"></i> PAGOS</h5>
            </a>
            <a href="{{ route('voyager.recibos.index') }}" class="list-group-item list-group-item-action flex-column align-items-start">
                <span class="badge badge-primary">{{ $total_rec }}</span>
                <h5 class="mb-1"><i class="voyager-receipt"></i> RECIBOS</h5>
            </a>
        </div>
        
    </div>
    
@stop

@section('javascript')
@stop