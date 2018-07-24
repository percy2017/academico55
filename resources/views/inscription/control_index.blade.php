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
		    <a href="{{ url('admin/inscription/control/create') }}" title="" class="btn btn-primary"><i class="voyager-list-add"></i> Nuevo</a>
		    <!-- <a href="#" title="" class="btn btn-warning"><i class="voyager-forward"></i> Excel</a> -->
		    <!-- <a href="{{ url('admin/modulo/inscripciones') }}" title="" class="btn btn-default"><i class="voyager-double-left"></i> Menu</a> -->
		</div>
	</div>
@stop
@section('content')
    <div class="modal modal-danger fade" id="estado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
		    <div class="modal-content">
		    	<form action="#" method="get">
		    		{{ csrf_field() }}
			     	<div class="modal-header">
			        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        	<h4 class="modal-title" id="myModalLabel">Estas Segur@ de realizar el Cambio ??</h4>
			      	</div>
			      	<div class="modal-body">
			      		<input type="text" id="insc_id" name="insc_id" hidden>
			      		<div class="form-group">
			      			<label for="">Detalle del Cambio</label>
			      			<textarea rows="3" class="form-control" name="observ"></textarea>
			      		</div>
			      	</div>
			      	<div class="modal-footer">
			        	
			        	<button type="submit" class="btn btn-danger">Aceptar</button>
			      	</div>
		      	</form>
		    </div>
	    </div>
    </div>

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
								<!--  <select id="filter" name="filter">
									<option value="contains" >Contiene</option>
									<option value="equals">Igual(=)</option>
								</select> -->
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
										<!-- <th>ID</th>  -->
										<th>Acciones</th>
										<th>#</th>
										<th>Fecha Insc</th>
										<th>Inicio de Clase</th> 
										<th>Documento</th>
										<th>Estudiante</th>
										<th>Carreras</th>
										<th>Horario</th>
										<th>Tipo</th>
										<th>Monto</th>
										<th>Habilitado</th>
										<th>Concluido</th>
										<!-- <th>Monto</th> -->
										<!-- <th class="text-center">Accciones</th>  -->
									</tr> 
								</thead> 
								<tbody> 
									@foreach($inscripciones as $item)
										<tr> 
											<!-- <td scope="row">{{$item->id}}</td>  -->
											<td>
												<div class="dropdown">
													<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
														Acciones
														<span class="caret"></span>
													</button>
													<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
														<li><a href="{{ url('/admin/inscription/control/show/'.$item->id) }}">DETALLE</a></li>
														<li><a href="{{ url('/admin/inscription/control/pdf/'.$item->id) }}" target="_blanck">PDF</a></li>
														<li><a href="{{ url('/admin/inscription/control/imagenes/'.$item->id) }}">IMAGENES</a></li>
														@if($item->estado)
															<li><a href="#" onclick="estados('{{ $item->id }}')" data-toggle="modal" data-target="#estado">DAR BAJA</a></li>
														@else
															<li><a href="#" onclick="estados('{{ $item->id }}')" data-toggle="modal" data-target="#estado">ACTIVAR</a></li>
														@endif
													</ul>
												</div>
											</td>
											<td>{{ $item->id }}</td>
											<td>
												{{$item->fecha_insc}}
												<br>
												<small>{{  \Carbon\Carbon::parse($item->fecha_insc)->diffForHumans() }}</small>
											</td> 
											<td>
												{{$item->fecha_inicio}}
												<br>
												<small>{{  \Carbon\Carbon::parse($item->fecha_inicio)->diffForHumans() }}</small>
											</td>
											
											<td>{{$item->num_documento}}</td> 
											<td>
												<a href="#" title="">
													{{$item->nombres}} {{$item->apellidos_paterno}} {{ $item->apellidos_materno }}
												</a>
											</td> 
											<td>
												
												{{$item->carrera}}
												
											</td>
											<td>{{$item->horario}}</td>
											<td>{{$item->tipo}}</td>
											<td>{{$item->monto}}</td>
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
											<!-- <td>{{$item->monto}} Bs.</td>  -->
											<!-- <td>
												<a href="#" target="_blank" class="btn btn-xs btn-primary">PDF</a>
												<a href="#" class="btn btn-xs btn-warning">Pagos</a>
											</td> -->
										</tr> 
									@endforeach
								</tbody> 

							</table>
							<hr>	
							<div class="text-center">
							{{ $inscripciones->links() }}
							<hr>
							<strong>
								INSC: {{ $total }}
								<br>
								MONTO: {{ $suma }} Bs.
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
</script>
@stop