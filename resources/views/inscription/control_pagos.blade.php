@extends('voyager::master')

@section('page_header')
<div class="container-fluid">
	<div class="row">
		<h1 class="page-title">
	     	<i class="voyager-bell"></i>
	       	Pagos de la Mensualidad N° {{ $id}}
	    </h1>
	     <!-- Button trigger modal -->
	     <!-- <a href="#" title="" class="btn btn-success"><i class="voyager-double-left"></i> Mansualidades</a> -->
		
		@if(!$estado)
		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
		  	<i class="voyager-list-add"></i> Nuevo Cuota
		</button>
		@endif
	</div>
</div>
@stop

@section('content')
<!-- Modal Nuevo Pago-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  	<form action="{{ url('/admin/inscription/control/show/pagos/storage') }}" method="POST">
		{{ csrf_field() }}
	    <div class="modal-content">
	     	<div class="modal-header">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        	<h4 class="modal-title" id="myModalLabel">Nuevo Pago</h4>
	      	</div>
	      	<div class="modal-body">
			  	<div class="form-group">
			  		<input type="text" name="estudiante_id" value="{{ $estudiante_id }}" hidden>
			  		<label for="">Monto</label>
			  		<input type="text" name="monto" class="form-control">
			  	</div>
			  	<div class="form-group">
			  		<label for="">Concepto</label>
			  		<textarea name="observaciones" class="form-control" rows="3"></textarea>
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
				 <input type="text" name="mens" value="{{ $id }}" hidden>
				 <input type="text" name="insc" value="{{ $insc_id }}" hidden>
			 	
	      	</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
	        	<button type="submit" class="btn btn-primary" onclick="return confirm('Esta seguro de guardar?')">Gardar</button>
	      	</div>
	    </div>
    </form>
  </div>
</div>
<div class="container-fluid">
	<div class="row">
		<form action="#" method="POST" enctype="multipart/form-data">
			{{ csrf_field() }}
			<div class="col-xs-12">
				<div class="panel panel-bordered">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                             Detalles de las Cuotas
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
										<th>Fecha</th> 
										<th>Monto</th>
										<th>Operador</th>
										<th>Observaciones</th>
										<th>Recibo</th>
										<th>Acciones</th>
										 
									</tr> 
								</thead> 
								<tbody> 
									@foreach($pagos as $item)
										<tr> 
											<th scope="row">{{$item->id}}</th>
											<th>
												{{$item->fecha_pago}}
												<br>
												<small>{{  \Carbon\Carbon::parse($item->fecha_pago)->diffForHumans() }}</small>
											</th>
											<th>{{$item->monto}} Bs.</th>
											<th>{{$item->name}}</th>
											<th>{{ $item->observaciones }}</th>
											<th>{{$item->numero}}</th>
											<td>
												<a href="{{ url('/admin/inscription/control/recibo/'.$item->recibo_id) }}" target="_blank" class="btn btn-primary" title="">PDF</a>
											</td>
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