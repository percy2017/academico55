<?php $permiso = Voyager::can('browse_inscripciones') ?>
@if($permiso)

	@extends('voyager::master')
	@section('page_header')
	<div class="container-fluid">
		<div class="row">
			<h1 class="page-title">
				<i class="voyager-person"></i>
			Historico de Notas
			</h1>
		</div>
	</div>
	@stop

	@section('content')
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-bordered">
						
						<div class="panel-body">
							<div class="panel-body">
								<div class="table-responsive">
									<table id="dataTable" class="table table-hover"> 
										<thead> 
											<tr>  
												<!-- <th>Accciones</th> -->
												<th>#</th>
												<th>Fecha</th>
												<th>Asignatura</th>
												<th>Educador</th>
												<th>Nota</th>
												<th>Obser.</th>
											</tr> 
										</thead> 
										<tbody>

											@foreach($notas as $item)
												<tr> 
													<td>{{$item->id}}</td>
													<td>
														{{$item->created_at}}
														<br>
														<small>{{  \Carbon\Carbon::parse($item->created_at)->diffForHumans() }}</small>
													</td>
													<td>{{$item->nombre}}</td>
													<td>{{$item->nombres}} {{$item->apellidos}}</td>
													<td>{{$item->nota}}</td>
													<td>
														@if($item->nota < setting('admin.nota_minima'))
															<label for="" class="label label-danger">Reprobado</label>
														@else
															<label for="" class="label label-success">Aprobado</label>
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
		</div>
	@stop

	@section('javascript')

	@stop
@else
	<script>
		location.href = '{{ route('voyager.profile') }}';
	</script>
@endif