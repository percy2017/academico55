@extends('voyager::master')

@section('page_header')
<div class="container-fluid">
	<div class="row">
		<h1 class="page-title">
	     	<i class="voyager-group"></i>
	       	Estudiantes de "{{ $prog->codigo }}"
	       	<input type="text" id="prog_id" name="prog_id" value="{{ $prog_id }}" hidden>
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
												<td>
													<input class="form-control" type="number" value="0" min="0" max="100">
												</td>
											</tr> 
										@endforeach
									</tbody> 
								</table>
							</div> 
	            		<hr>
	            		<div style="text-align: right;">
							<input type="text" name="prog_id" value="{{$prog_id}}" hidden>
							<!-- <button type="submit" class="btn btn-primary" title="">Guardar</button> -->
							<a href="#" onclick="NotasAdd('{{ url('/admin/notes/add/notas/:prog_id/:insc_id/:nota') }}')" class="btn btn-primary" title="">Guardar</a>
						</div>
	            	</div>
	        	</div>
			</div>
			
		</form>
		</div>
	</div>
@stop

@section('javascript')
	<script>
		function NotasAdd(urli)
		{

			if(confirm('Estas seguro de Guardar y Terminar ?'))
			{
				var t = document.getElementById('dataTable').rows.length;
				var prog_id = document.getElementById('prog_id').value;
	
				for (var i =1; i< t; i++) 
				{
					var insc_id = document.getElementById('dataTable').rows[i].cells[0].innerHTML;
					var nota = document.getElementById('dataTable').rows[i].cells[4].querySelector('input').value;

					var aux = urli;
					aux = aux.replace(':prog_id',prog_id);

					var aux2 = aux;
					aux2 = aux2.replace(':insc_id',insc_id);

					var aux3 = aux2;
					aux3 = aux3.replace(':nota',nota);
					
					$.ajax({
						url: aux3,
						type: 'GET',
					})
					.done(function() {
						console.log("success");
						// document.getElementById('dataTable').rows[i].style.backgroundColor =  "blue";
					})
					.fail(function() {
						console.log("error");
					});	
				}	
				location.href = '{{ url('/admin/notes/index') }}';
			}

		}
	</script>
@stop
