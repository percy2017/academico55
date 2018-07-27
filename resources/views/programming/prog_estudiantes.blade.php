
<div id="search-input">
    <div class="input-group col-md-12">
        <input type="text" class="form-control" placeholder="escribe el documento.." name="buscar_est" id="buscar_est" value="{{ $criterio }}" onkeyup="buscar_est(event, '{{ url('/admin/programming/programacion_materias/show/estudiantes/search/criterio/'.$prog_id) }}')" autofocus>
        <span class="input-group-btn">
            <button class="btn btn-info btn-lg" type="submit">
                <i class="voyager-search"></i>
            </button>
        </span>
    </div>
</div>


<div class="table-responsive">
	<table id="dataTable" class="table table-hover search-table"> 
		<thead> 
			<tr>  
				<th>Insc</th>
				<th>Documento</th>
				<th>Estudiante</th>
				<th>Carrera</th>
				<th>Inicio de Clase</th>
				
				<th>Accion</th>
			</tr> 
		</thead> 
		<tbody> 
			@foreach($estudiantes as $item)
				<tr> 
					<td>{{$item->insc_id}}</td>
					<td>{{$item->num_documento}}</td>
					<td>{{$item->nombres}} {{ $item->apellidos_paterno }} {{ $item->apellidos_materno }}</td>
					<td>{{$item->carrera}}</td>
					<td>
						{{$item->fecha_inicio}}
						<br>
						<small>{{  \Carbon\Carbon::parse($item->fecha_inicio)->diffForHumans() }}</small>
					</td>					
					<td>
						<a href="{{ url('/admin/programming/programacion_materias/show/estudiantes/add/'.$item->insc_id.'/'.$prog_id) }}" class="btn btn-primary" onclick="return confirm('Estas seguro de Agregar al Estudiante?')" title="">Agregar</a>
					</td>			
				</tr> 
			@endforeach
		</tbody>  
	</table>
	<div class="text-center">
		{{ $estudiantes->links() }}
	</div>
</div> 