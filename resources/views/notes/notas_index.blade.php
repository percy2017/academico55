<?php $permiso = Voyager::can('browse_notas') ?>
@if($permiso)	
	@extends('voyager::master')
	@section('page_header')
	<div class="container-fluid">
		<div class="row">
			<h1 class="page-title">
				<i class="voyager-logbook"></i>
				Centralizador de Notas
			</h1>
			<!-- <a href="{{ url('admin/modulo/centronotas') }}" class="btn btn-warning"><i class="voyager-double-left"></i> Menu</a> -->
		</div>
	</div>
	@stop

	@section('content')
	<div class="modal modal-info fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Estudiantes</h4>
				</div>
				<div class="modal-body">
					<div id="estudiantes_lis"></div>
				</div>
			</div>
	</div>
	</div>

	<div class="page-content browse container-fluid">	
		@include('voyager::alerts')
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-bordered">
					<div class="panel-body">
						<form class="form-search" method="POST" action="#">
							{{ csrf_field() }}
							<div id="search-input">
								<div class="input-group col-md-12">
									<input type="text" class="form-control" placeholder="escrib el criterio de busqueda.." name="buscar" value="{{ $criterio }}">
									<span class="input-group-btn">
										<button class="btn btn-info btn-lg" type="submit">
											<i class="voyager-search"></i>
										</button>
									</span>
								</div>
							</div>
						</form>
						<div class="table-responsive">
							<table id="dataTable" class="table table-hover"> 
								<thead> 
									<tr>  
										<!-- <th>Accciones</th> -->
										<th>Prog</th>
										<th>Fecha</th>
										<th>Educador</th>
										<th>Asignatura</th>
										<th>Horario</th>
										<th>Estado</th>
									</tr> 
								</thead> 
								<tbody> 
									@foreach($programaciones as $item)
										<tr class='clickable-row' data-href='{{ url('/admin/notes/show/'.$item->id) }}'> 
											<td>
												{{ $item->id }}
											</td>
											<td>
												<a href="#">{{ $item->fecha }}</a>
												<br>
												<small>{{  \Carbon\Carbon::parse($item->fecha)->diffForHumans() }}</small>
											</td>
											<td><a href="#" title="">{{$item->nombres}} {{ $item->apellidos }}</a></td>
											<td>
												<a href="#">{{ $item->asignatura }}</a>
											</td>
											<td>{{$item->horario}}</td>
											<td>
												@if($item->nota_estado)
													<label for="" class="label label-warning">En proceso</label>
												@else
													<label for="" class="label label-success">Cuncluido</label>
												@endif
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
		<script>
			$(".clickable-row").click(function() {
				window.location = $(this).data("href");
			});
		</script>
	@stop
@else
	<script>
		location.href = '{{ route('voyager.profile') }}';
	</script>
@endif