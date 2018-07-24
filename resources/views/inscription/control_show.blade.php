@extends('voyager::master')

@section('page_header')
<div class="container-fluid">
	<div class="row">
		<h1 class="page-title">
	     	<i class="voyager-pen"></i>
	       	Inscripción # {{ $estudiante->id }}
	    </h1>
		<br>
		<!-- <div class="col-xs-12">
			<a href="#" title="" class="btn btn-primary	 btn-sm"><i class="voyager-file-text"></i> Imprimir</a>
			<a href="#" title="" class="btn btn-primary	 btn-sm"><i class="voyager-file-text"></i> Imprimir</a>
			<a href="#" title="" class="btn btn-primary	 btn-sm"><i class="voyager-file-text"></i> Imprimir</a>	
		</div> -->
		<div style="text-align: right; font-size: 20px;">
			@if($estudiante->estado)
				<label for="" class="label label-info">Inscripción Activa</label>
			@else
				<label for="" class="label label-danger">Inscripción Dado de Baja</label>
			@endif
		</div>
	</div>
</div>
@stop

@section('content')
<!-- Modal Nuevo Pago-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  	<form action="{{ url('/admin/inscription/control/show/mensualidades/storage') }}" method="POST">
		{{ csrf_field() }}
	    <div class="modal-content">
	     	<div class="modal-header">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        	<h4 class="modal-title" id="myModalLabel">
	        	        Mensualidad - N°  @if($ult_men) {{ $ult_men->num_mens + 1 }} @endif
					<div>
						Monto de Inscripción: {{ $estudiante->monto }} Bs.
					</div>
				</h4>
	      	</div>
	      	<div class="modal-body">
	      		
	    		<div class="form-group">
			    	<label for="exampleInputEmail1">Periodo Inicio</label>
					<input type="date" class="form-control" name="fecha_inicio" value="{{$ult_men->fecha_final}}">
			  		{{ $ult_men->fecha_final }}
				</div>

			  	<div class="form-group">
			    	<label for="exampleInputPassword1">Periodo Final</label>
			    	<input type="date" class="form-control" name="fecha_final" value="{{ date("Y-m-d", strtotime("$ult_men->fecha_final +1 month")) }}">
			  		
				</div>
			  	
			  	<div class="form-group">
			  		<label for="">Monto</label>
			  		<input type="text" name="monto" class="form-control" value="{{ $estudiante->monto }}">
			  	</div>
			  	<div class="form-group">
			  		<label for="">Concepto</label>
			  		<textarea name="observaciones" class="form-control" rows="3">{{ setting('admin.concepto_recibo1') }}</textarea>
			  	</div>
			  	<div class="checkbox">
			  		<h4>
			  			<label>
				    	<input type="checkbox" name="estado" class="toggleswitch">
				      	Cerrar Mensualidad ?
				    </label>
			  		</h4>
				    <p>Si tiqueas, el pago de la mensualidad sera del 100%, si no estara abierto hasta completar la mensualidad.</p>
				 </div>
				 <input type="text" name="estudiante_id" value="{{ $estudiante->estudiante_id }}" hidden>
				 <input type="text" name="insc" value="{{ $estudiante->insc }}" hidden>
				 
			 	
	      	</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
	        	<button type="submit" onclick="return confirm('Esta seguro de guardar?')" class="btn btn-primary">Gardar</button>
	      	</div>
	    </div>
    </form>
  </div>
</div>


	<div class="container-fluid">
		<div class="row">
			<form action="#" method="POST" enctype="multipart/form-data">
				{{ csrf_field() }}
				
				<div class="col-sm-6 col-md-6">
					<div class="panel panel-bordered">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">
	                             Datos del Estudiante
	                        </h3>
	                        <div class="panel-actions">
	                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
	                        </div>
	                    </div>
	                    <div class="panel-body">
	                    	
							<div class="col-sm-3">
								Estudiante:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->apellidos_paterno }} {{ $estudiante->apellidos_materno }}, {{ $estudiante->nombres }}</h4>
							</div>

							<div class="col-sm-3">
								Direccion:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->direccion }}</h4>
							</div>

							<div class="col-sm-3">
								Telefono:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->telefono }}</h4>
							</div>
							<div class="col-sm-3">
								Documento:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->num_documento }}</h4>
							</div>
							<div class="col-sm-3">
								Genero:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->sexo }}</h4>
							</div>

	                    </div>
	                </div>
				</div>
				<div class="col-sm-6 col-md-6">
					<div class="panel panel-bordered">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">
	                             Datos de la Inscripción
	                             
	                        </h3>
	                        <div class="panel-actions">
	                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
	                        </div>
	                    </div>
	                    <div class="panel-body">
	                    	<div class="col-sm-3">
								Fecha Insc:
							</div>
							<div class="col-sm-9">
								<h4>
									{{ $estudiante->fecha_insc }}
									<small><a href="#">{{  \Carbon\Carbon::parse($estudiante->fecha_insc)->diffForHumans() }}</a></small>
								</h4>

							</div>

							<div class="col-sm-3">
							Fecha inicio:
							</div>
							<div class="col-sm-9">
								<h4>
									{{ $estudiante->fecha_inicio }}
									<small><a href="#">{{  \Carbon\Carbon::parse($estudiante->fecha_inicio)->diffForHumans() }}</a></small>
								</h4>
								
							</div>

							<div class="col-sm-3">
								Carrera:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->carrera }}</h4>
							</div>

							<div class="col-sm-3">
								horario:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->horario }}</h4>
							</div>
							<div class="col-sm-3">
								Tipo:
							</div>
							<div class="col-sm-9">
								<h4>{{ $estudiante->tipo }}</h4>
							</div>
	                    </div>
	                </div>
				</div>
					
				
				
				<div class="col-sm-12">
					<h1 class="page-title">
				     	<i class="voyager-credit-cards"></i>
				       	Mensualidades 
				    </h1>
				    <!-- Button trigger modal -->
					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
					<i class="voyager-pen"></i> Nuevo Pago
					</button>
				</div>
					
				
				<div class="col-xs-12">
					<div class="panel panel-bordered">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">
	                             Detalles de las Mensualidades
	                        </h3>
	                        <div class="panel-actions">
	                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
	                        </div>
	                    </div>
	                    <div class="panel-body">
	                    	<div class="table-responsive">
								<table id="dataTable" class="table table-hover"> 
									<thead> 
										<tr>  
											<th>ID</th> 
											<th>Actualizado</th>
											<th>N°</th> 
											<th>Periodo</th>
											<th>Operador</th>
											<th>Concepto</th>
											<th>Monto</th>
											<th>Estado</th>
											<th>Recibo</th>
											<th>Accciones</th> 
										</tr> 
									</thead> 
									<tbody>
										
											@foreach($mensualidades as $item)
												<tr> 
													<th scope="row">{{$item->id}}</th>
													<td>
														{{ $item->updated_at }}
														<br>
														<small>{{  \Carbon\Carbon::parse($item->updated_at)->diffForHumans() }}</small>
													</td>
													<th>{{$item->num_mens}}</th>
													<th>
														<h4>
															<label for="" class="label label-success">
																Del: {{$item->fecha_inicio}} Al: {{ $item->fecha_final }}
															</label>
														</h4>
														
														
													</th>
													<th>{{$item->name}}</th>
													<th>{{$item->observaciones}}</th>
													<th>{{$item->monto}} Bs.</th>
													<th>
														@if($item->estado)
															<label for="#" class="label label-danger">Cerrado</label>
														@else
															<label for="#" class="label label-info">Abierto</label>
														@endif
													</th>
													<td>
														{{ $item->numero }}
													</td>
													<th>
														
															<a href="{{ url('/admin/inscription/control/recibo/'.$item->recibo_id) }}"  target="_blank" class="btn btn-primary" title="">PDF</a>
														
															<a href="{{ url('/admin/inscription/control/show/pagos/'.$item->id) }}" class="btn btn-warning">Pagos</a>
														
													</th>
												</tr> 
											@endforeach
										
										
									</tbody> 
								</table>
							</div>
	                    </div>
	                </div>
				</div>

			</form>
		</div>
	</div>
@stop

@section('javascript')
<script type="text/javascript" src="{{ asset('plugins/confirm/demo/demo.js') }}"></script>
<script>
	
	 function guardar()
	 {
	 	$.confirm({
		    title: 'Confirm!',
		    content: 'Simple confirm!',
		    buttons: {
		        confirm: function () {
		            $.alert('Confirmed!');
		        },
		        cancel: function () {
		            $.alert('Canceled!');
		        },
		        somethingElse: {
		            text: 'Something else',
		            btnClass: 'btn-blue',
		            keys: ['enter', 'shift'],
		            action: function(){
		                $.alert('Something else?');
		            }
		        }
		    }
		});
	 }
</script>
@stop
