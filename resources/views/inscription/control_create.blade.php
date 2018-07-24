@extends('voyager::master')

@section('page_header')
<div class="container-fluid">
	<div class="row">
		<h1 class="page-title">
	     	<i class="voyager-logbook"></i>
	       	Nueva Inscripción 
	    </h1>
	    <!-- <a href="#" class="btn btn-success" title=""> <i class="voyager-double-left"></i>Inscripciónes</a> -->
	</div>
</div>
@stop

@section('content')
	<div class="container-fluid">
		<div class="row">
			<form action="{{ url('/admin/inscription/control/storage') }}" method="POST" enctype="multipart/form-data">
				{{ csrf_field() }}
				<div class="col-xs-12 col-sm-7 col-md-7">
					<div class="panel panel-bordered">
	                    @if (count($errors) > 0)
	                        <div class="alert alert-danger">
	                            <ul>
	                                @foreach ($errors->all() as $error)
	                                    <li>{{ $error }}</li>
	                                @endforeach
	                            </ul>
	                        </div>
	                    @endif
	                    <div class="panel-heading">
	                        <h3 class="panel-title">
	                             Datos del Estudiante
	                        </h3>
	                        <div class="panel-actions">
	                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
	                        </div>
	                    </div>
	                    <div class="panel-body">

	                    	<div class="form-group">
							    <label for="">Nombres </label><strong for="" style="color: red;"> (*)</strong>
							    <input type="text" name="nombres" class="form-control" required>
							</div>
							<div class="form-group">
							    <label for="">Apellido Paterno</label><strong for="" style="color: red;"> (*)</strong>
							    <input type="text" class="form-control" id="" name="apellidos_paterno" placeholder="" required>
							</div>
							<div class="form-group">
							  	<label for="">Apellido Materno</label>
							  	<input type="text" class="form-control" id="" name="apellidos_materno" placeholder="">
							</div>
							
							<div class="form-group">
							  	<label for="">Dirección</label><strong for="" style="color: red;"> (*)</strong>
							  	<textarea name="direccion" class="form-control" rows="3" required></textarea>
							  	
							</div>
							<div class="form-group">
							    <label for="">Genero</label>
							    <select class="form-control select2" name="sexualidad_id">
							    	@foreach($sexos as $item)
							    		<option value="{{ $item->id }}">{{ $item->nombre }}</option>
							    	@endforeach
								</select>
							</div>
							
								
							<div class="form-group">
							  	<label for="">Telefono del Estudiante</label><strong for="" style="color: red;"> (*)</strong>
							  	<input type="number" class="form-control" id="" name="telefono" placeholder="" required>
							</div>
						
						
							<div class="form-group">
							  	<label for="">Telefono del Tutor o Responsable</label>
							  	<input type="number" class="form-control" id="" name="telefono2" placeholder="">
							</div>
								
							
							<div class="row">
								<div class="col-sm-8">
									<div class="form-group">
										<label for="">Carnet de Identidad</label><strong for="" style="color: red;"> (*)</strong>
										<input type="number" class="form-control" name="num_documento" placeholder="" required>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<label for="">Expedido</label>
										<select name="expedido" class="form-control">
											<option value="BENI">BENI</option>
											<option value="SANTA CRUZ">SANTA CRUZ</option>
											<option value="LA PAZ">LA PAZ</option>
											<option value="COCHABAMBA">COCHABAMBA</option>
											<option value="PANDO">PANDO</option>
											<option value="POTOSI">POTOSI</option>
											<option value="TARIJA">TARIJA</option>
											<option value="ORURO">ORURO</option>
										</select>
									</div>
								</div>
							</div>
							<small>
								Los campos <strong for="" style="color: red;"> (*)</strong> son de registro oboligatorios.
								<br>

							</small>
	                    </div>
	                </div>
				</div>
				<div class="col-xs-12 col-sm-5 col-md-5">
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
	                    	<div class="form-group">
	                    		<label for="">Tipo de Inscripción</label>
							    <select class="form-control select2" name="tipo_id">
							    	@foreach($tipos as $item)
							    		<option value="{{ $item->id }}">{{ $item->nombre }}</option>
							    	@endforeach
								</select>
							</div>
							<div class="form-group">
								<label for="">Carrera</label>
							    <select class="form-control select2" name="carrera_id">
							    	@foreach($carreras as $item)
							    		<option value="{{ $item->id }}">{{ $item->nombre }}</option>
							    	@endforeach
								</select>
							</div>
							<div class="form-group">
								<label for="">Horario</label>
							    <select class="form-control select2" name="horario_id">
							    	@foreach($horarios as $item)
							    		<option value="{{ $item->id }}">{{ $item->nombre }} - {{ $item->hora_inicio }} - {{ $item->hora_fin }}</option>
							    	@endforeach
								</select>
							</div>
							<div class="form-group">
	                    		<label for="">Fecha de Inicio de clase</label><strong for="" style="color: red;"> (*)</strong>
							    <input type="date" class="form-control" name="fecha_inicio" value="{{ date("Y-m-j") }}" required>
							</div>
	                    </div>
	                </div>
	                <div class="panel panel-bordered">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">
	                            Datos del Recibo
	                        </h3>
	                        <div class="panel-actions">
	                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
	                        </div>
	                    </div>
	                    <div class="panel-body">
	                    	<div class="row">
	                    		<div class="col-sm-8">
		                    		<div class="form-group">
			                    		<label for="">Monto a Cancelar: </label><strong for="" style="color: red;"> (*)</strong>
									    <input type="number" class="form-control" name="monto" value="0" required> 
									</div>
		                    	</div>
		                    	<div class="col-sm-4">
		                    		<div class="form-group">
			                    		<label for="">Monto a Fijo: </label><strong for="" style="color: red;"> (*)</strong>
									    <input type="number" class="form-control" name="monto_fijo" value="0" required> 
									</div>
		                    	</div>
	                    	</div>
							<div class="form-group">
	                    		<label for="">Concepto: </label><strong for="" style="color: red;"> (*)</strong>
							    <textarea class="form-control" name="observaciones" row="2" required>{{ setting('admin.concepto_recibo1') }}</textarea>
							</div>

							<div class="checkbox">
						  		<h4>
						  			<label>
							    		<input type="checkbox" name="estado" class="toggleswitch">
							      		Cerrar Mensualidad ?
							    	</label>
						  		</h4>
							    <small>Si tiqueas, el pago de la mensualidad sera del 100%, si NO estara abierto hasta completar la mensualidad.</small>
							 </div>
							 
	                    </div>
	                </div>
	                
				</div>

				<div class="col-xs-12">
					<div class="panel">
	                    <div class="panel-body">
	                    	<div class="form-group">
							    <div class="text-right">
							    	<button type="submit" class="btn btn-primary" onclick="return confirm('Esta seguro de guardar?')">
							     		Guardar Nueva Incripción
							     	</button>
							    </div>
							     
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
