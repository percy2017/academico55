@extends('voyager::master')

@section('page_header')
<div class="container-fluid">
	<div class="row">
		<h1 class="page-title">
	     	<i class="voyager-group"></i>
	       	Estudiantes de "{{ $prog->codigo }}"
	    </h1>
	</div>
</div>
@stop

@section('content')
<!-- Estudiantes -->
<div class="modal modal-info fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
	     	<div class="modal-header">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        	<h4 class="modal-title" id="myModalLabel">Seleccion@ el Estudiante</h4>
	      	</div>
	      	<div class="modal-body">
	      		<div id="estudiantes_lis"></div>
	      	</div>
	    </div>
  </div>
</div>
	<div class="container-fluid">
		 
		<div class="row">

			<div class="col-xs-12">
			<form action="#" method="post" accept-charset="utf-8">
				<div class="panel panel-bordered">
					<h4 class="text-center">
						<ins>
							<i class="voyager-study"> </i> {{ $prog->nombres }} {{ $prog->apellidos }}
						</ins>
					</h4>
	            	<div class="panel-body">
	            		
	            			{{ csrf_field() }}
	            			<div class="table-responsive">
								<table id="dataTable" class="table table-hover"> 
									<thead> 
										<tr>  
											<!-- <th>Accciones</th> -->
											<th>Insc</th>
											<th>Documento</th>
											<th>Estudiante</th>
											<th>Dirección</th>
											<th>Calificación</th>
										</tr> 
									</thead> 
									<tbody>

										@foreach($estudiantes as $item)
											<tr> 
												<td>{{$item->insc}}</td>
												<td>{{$item->num_documento}}</td>
												<td>{{$item->nombres}} {{$item->apellidos_paterno}} {{$item->apellidos_materno}}</td>
												<td>{{$item->direccion}}</td>
												<td>{{ $item->nota }}</td>
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
	
@stop
