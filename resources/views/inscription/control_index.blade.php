<?php $permiso = Voyager::can('browse_inscripciones') ?>
@if($permiso)
	@extends('voyager::master')
	@section('css')
	@stop
	@section('page_header')
		
		<div class="container-fluid">
			<div class="row">
				<h1 class="page-title">
					<i class="voyager-logbook"></i>
					Inscripciónes 
				</h1>
				<a href="{{ url('/admin/inscription/control/create') }}" title="" class="btn btn-primary"><i class="voyager-list-add"></i> Nuevo</a>
				<a href="{{ url('/admin/inscription/control/deudores') }}" title="" class="btn btn-primary"><i class="voyager-megaphone"></i> Deudores</a>
				<!-- <a href="{{ url('admin/modulo/inscripciones') }}" title="" class="btn btn-default"><i class="voyager-double-left"></i> Menu</a> -->
			</div>
		</div>
	@stop
	@section('content')
		<div class="page-content browse container-fluid">
			@include('voyager::alerts')
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-bordered">
						<div class="panel-body">
							<form class="form-search" method="POST" action="{{ url('/admin/inscription/control/search') }}">
								{{ csrf_field() }}
								<div id="search-input">
									<select id="filtro" name="filtro" class="">
										<option value="num_documento" @if ($filtro=='num_documento') selected  @endif>DOCUMENTO</option>
										<option value="nombres" @if ($filtro=='nombres') selected  @endif>NOMBRE</option>
										<option value="apellidos_paterno" @if ($filtro=='apellidos_paterno') selected  @endif>APELLIDOS PATERNOS</option>
										<option value="apellidos_materno" @if ($filtro=='apellidos_materno') selected  @endif>APELLIDOS MATERNO</option>
										<option value="telefono" @if ($filtro=='telefono') selected  @endif>TELEFONO EST.</option>
									</select>
									<div class="input-group col-md-12">
										<input type="text" class="form-control" placeholder="aqui tu criterio de busqueda.." name="buscar" value="{{ $criterio }}" autofocus="true">
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
											<th>#</th>
											<th>Fecha Insc</th>
											<th>Inicio de Clase</th> 
											<th>Documento</th>
											<th>Estudiante</th>
											<th>Carreras</th>
											<th>Horario</th>
											<th>Habilitado</th>
											<th>Concluido</th>
										</tr> 
									</thead> 
									<tbody> 
										@foreach($inscripciones as $item)
											<tr class='clickable-row' data-href='{{ url('/admin/inscription/control/show/'.$item->id) }}'> 
												<td>
													<a href="#" title="">
														<strong> {{ $item->id }} </strong>
													</a>
												</td>
													
												<td>
													<a href="#" title="">
														<strong>{{ $item->fecha_insc }}</strong>
													</a>
													<br>
													<small>{{  \Carbon\Carbon::parse($item->fecha_insc)->diffForHumans() }}</small>
												</td> 
												<td>
													<a href="#" title="">
														{{$item->fecha_inicio}}
													</a>
													<br>
													<small>{{  \Carbon\Carbon::parse($item->fecha_inicio)->diffForHumans() }}</small>
												</td>
												<td>
													<a href="#" title="">
														{{$item->num_documento}}
													</a>
												</td> 
												<td>
													<a href="#" title="">
														{{$item->nombres}} {{$item->apellidos_paterno}} {{ $item->apellidos_materno }}
													</a>
												</td> 
												<td>
													<a href="">
														{{ $item->carrera }}
													</a>
												</td>
												 <td><a href="">{{ $item->horario }}</a></td>
												<td>
													@if($item->estado)
														<label for="" class="label label-success">Activo</label>
														
													@else
														<label for="" class="label label-danger">De Baja</label>
													@endif
													
												</td>
												<td>
													@if($item->concluido)
														<label for="" class="label label-success">Finalizado</label>
														
													@else
														<label for="" class="label label-warning">En Proceso</label>
													@endif
													
												</td>
											</tr> 
										@endforeach
									</tbody> 

								</table>
								
								<div class="text-center">
									{{ $inscripciones->links() }}						
									<strong>										
										<br>
										TOTAL: {{ $total }}
										<!-- MONTO: {{ $suma }} Bs. -->
									</strong>
								</div>
								
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
	@stop
	@section('javascript')
	<script>
		function estados(insc)
		{
			document.getElementById('insc_id').value = insc;
		}
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