<?php $permiso = Voyager::can('browse_programaciones') ?>
@if($permiso)
    @extends('voyager::master')

    @section('page_header')
    <div class="container-fluid">
        <div class="row">
            <h1 class="page-title">
                <i class="voyager-logbook"></i>
                Programaciones
            </h1>
            <a href="{{ url('/admin/programming/programacion_materias/create') }}" class="btn btn-sm btn-primary"><i class="voyager-plus"></i> Nueva</a>
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
                                        <th>#</th>
                                        <th>Fecha</th>                                        
                                        <th>Codigo</th>
                                        <th>Asignatura</th>
                                        <th>Educador</th>
                                        <th>Horario</th>
                                        <th>Periodo</th>
                                        <th>Estado</th>
                                        <th>Notas</th>
                                    </tr> 
                                </thead> 
                                <tbody> 
                                    @foreach($programaciones as $item)
                                        <tr class='clickable-row' data-href='{{ url('/admin/programming/programacion_materias/show/'.$item->id) }}'>                                             
                                            <td>
                                            <a href="#">{{  $item->id }}</a></td>
                                            <td>
                                                <a href="#">{{ $item->fecha }}</a>
                                                <br>
                                                <small>{{  \Carbon\Carbon::parse($item->fecha)->diffForHumans() }}</small>
                                            </td>                                            
                                            <td><a href="#">{{ $item->codigo }}</a></td>
                                            <td><a href="#">{{ $item->asignatura }}</a></td>
                                            <td><a href="#">{{ $item->educador }}</a></td>
                                            <td><a href="#">{{ $item->horario }}</a></td>
                                            <td><a href="#">{{ $item->periodo }}</a></td>
                                            
                                            
                                            <td class="text-center">
                                                @if($item->estado)
                                                    <label for="" class="label label-success">Activo</label>                                                    
                                                @else
                                                    <label for="" class="label label-success">De Baja</label>
                                                @endif                                                
                                            </td>
                                            <td class="text-center">
                                                @if($item->nota_estado)
                                                    <label for="" class="label label-warning">En Proceso</label>                                                    
                                                @else
                                                    <label for="" class="label label-success">Concluido</label>
                                                @endif                                                
                                            </td>
                                        </tr> 
                                    @endforeach
                                </tbody> 

                            </table>

                            <div class="text-center">
                                {{ $programaciones->links() }}						
                                <strong>										
                                    <br>
                                    TOTAL: {{ $total_prog }}
                                  
                                </strong>
                            </div>
                            
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    @stop

    @section('css')
    @stop
    @section('javascript')
        <script type="text/javascript" src="{{ asset('plugins/table-search/html-table-search.js') }}"></script>
        
        <script type="text/javascript">
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