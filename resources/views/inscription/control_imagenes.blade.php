<?php $permiso = Voyager::can('browse_inscripciones') ?>
@if($permiso)	
	@extends('voyager::master')
	@section('page_header')
	<div class="container-fluid">
		<div class="row">
			<h1 class="page-title">
				<i class="voyager-logbook"></i>
				Imagenes 
			</h1>
			<a href="#" data-toggle="modal" data-target="#nuevo_img" title="" class="btn btn-primary"><i class="voyager-list-add"></i> Nuevo</a>
			<!-- <a href="#" class="btn btn-warning"><i class="voyager-double-left"></i> Volver</a> -->
		</div>
	</div>
	@stop
	@section('content')
	<!-- Dar De Baja -->
	<div class="modal modal-info fade" id="nuevo_img" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form action="{{ url('/admin/inscription/control/imagenes/add') }}" method="POST" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Cargar Imagenes de la Inscripción ??</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="">Selecciona la imagen</label>
							<input type="file" name="ruta">
						</div>
						<div class="form-group">
							<label for="">Descripcion de la Imagen</label>
							<textarea name="descripcion" rows="3" class="form-control"></textarea>
						</div>
						<input type="text"  name="insc_id" value="{{ $insc->id }}" hidden>
					</div>
					<div class="modal-footer">
						
						<button type="submit" class="btn btn-info">Cargar</button>
					</div>
				</form>
			</div>
	</div>
	</div>
		<div class="container-fluid">
			<div class="row">
				
					<div class="panel panel-bordered">
						<div class="panel-body">
							@foreach($imagenes as $item)

							<div class="col-xs-12 col-sm-3 col-md-3">
								<div class="thumbnail">
								<img src="{{ asset('/storage/inscription_imagenes/'.$item->ruta) }}" alt="..." class="img-responsive img-thumbnail">
								<div class="caption">
									<!-- <h3>Descripcion</h3> -->
									<p class="text-center">
										{{ $item->descripcion }}
										<a href="{{ url('/admin/inscription/control/imagenes/delete/'.$item->id.'/'.$insc->id) }}" class="" onclick="return confirm('Esta seguro de eliminar?')"> - <i class="voyager-trash"></i> Eliminar</a>
									</p>
									

									<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p> -->
								</div>
								</div>
							</div>
								
							@endforeach
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