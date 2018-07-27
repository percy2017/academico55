<?php $permiso = Voyager::can('browse_inscripciones') ?>
@if($permiso)
@extends('voyager::master')

@section('page_header')
<div class="container-fluid">
	<div class="row">
		<h1 class="page-title">
	     	<i class="voyager-logbook"></i>
	       	Inscripciones en Mora 
	    </h1>
	    <!-- <a href="{{ url('admin/modulo/inscripciones') }}" class="btn btn-warning"><i class="voyager-double-left"></i> Volver</a> -->
	</div>
</div>
@stop


@section('content')
<div class="page-content browse container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-bordered">
	            <div class="panel-body">
	            	<div class="table-responsive">
		<table id="dataTable" class="table table-hover"> 
			<thead> 
				<tr>  
					<!-- <th>ID</th>  -->
					<th>Insc</th>
					<th>Inicio de Clase</th>
					<th>Documento</th>
					<th>Estudiante</th>
					<th>Ultimo Pago</th> 
					<th>Acciones</th>
				</tr> 
			</thead> 
			<tbody> 
				@foreach($insc as $item)
					<tr> 
						<td>{{$item->id}}</td> 
						<td>
							{{$item->fecha_inicio}}
							<br>
							<small>{{  \Carbon\Carbon::parse($item->fecha_inicio)->diffForHumans() }}</small>
						</td> 
						<td>{{$item->num_documento}}</td> 
						<td>{{$item->nombres}} {{$item->apellidos_paterno}} {{$item->apellidos_materno}}</td> 
						<td>
							{{$item->ultimo}}
							<br>
							<small>{{  \Carbon\Carbon::parse($item->ultimo)->diffForHumans() }}</small>
						</td>
						<td>
							 <a href="{{ route('mensualidades_mi.show',$item->id) }}" class="btn btn-primary">Pagos</a>
						</td>
						
					</tr> 
				@endforeach
			</tbody> 
		</table>
	</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
@stop

@section('javascript')

@stop
@else
	<script>
		location.href = '{{ route('voyager.profile') }}';
	</script>
@endif