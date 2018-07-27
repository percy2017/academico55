<?php $permiso = Voyager::can('browse_programaciones') ?>
@if($permiso)
    @extends('voyager::master')

    @section('page_header')
    <div class="container-fluid">
        <div class="row">
        
            <h1 class="page-title">
                <i class="voyager-group"></i>
                    Estudiantes
            </h1>
                @if($prog->nota_estado)
                    <a href="#" data-toggle="modal" data-target="#myModal" onclick="estudiantes('{{ url('/admin/programming/programacion_materias/show/estudiantes/listado/'.$prog->id) }}')" class="btn btn-primary" title="">
                        <i class="voyager-plus"></i> Agregar
                    </a>
                @else
                    <label class="label label-success">Concluido</label>
                @endif
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
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table id="dataTable" class="table table-hover search-table"> 
                                    <thead> 
                                        <tr>  
                                            <!-- <th>Accciones</th> -->
                                            <th>Insc</th>
                                            <th>Estudiante</th>
                                            <th>Carrera</th>
                                            <th>Inicio de Clase</th>
                                            
                                            <th>Accion</th>
                                        </tr> 
                                    </thead> 
                                    <tbody> 
                                        
                                        @if(count($estudiantes) <= 0)
                                            <tr>
                                                <td colspan="5">
                                                    <h3 style="text-align: center;">Agrega estudiantes a la programación</h3>
                                                </td>
                                            </tr>
                                        @else
                                            @foreach($estudiantes as $item)
                                                <tr> 
                                                    <td>{{ $item->insc_id }}</td>
                                                    <td>{{$item->nombres}} {{ $item->apellidos_paterno }} {{ $item->apellidos_materno }}</td>
                                                    <td>{{$item->carrera}}</td>
                                                    <td>
                                                        {{$item->fecha_inicio}}
                                                        <br>
                                                        <small>{{  \Carbon\Carbon::parse($item->fecha_inicio)->diffForHumans() }}</small>
                                                    </td>
                                                    
                                                    <td>
                                                        @if($prog->nota_estado)
                                                            <a href="{{ url('/admin/programming/programacion_materias/show/estudiantes/delete/'.$item->insc_id.'/'.$prog->id) }}" onclick="return confirm('Estas seguro de eliminar ?')" class="btn btn-danger" title="">Eliminar</a>
                                                        @else
                                                            <label class="label label-success">Concluido</label>
                                                        @endif
                                                        
                                                    </td>			
                                                </tr> 
                                            @endforeach
                                        @endif
                                    </tbody>  
                                </table>
                                <div class="text-center">
                                    Total: {{ $total_est }}
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
    <script>
        function estudiantes(urli)
        {
            $.ajax({
                url: urli,
                type: 'GET',
            })
            .done(function(result) {
                $('#estudiantes_lis').empty().html(result);
            })
            .fail(function() {
                console.log("error, cargando los estudiantes.");
            });
        }
        $(document).on('click', '.pagination li a', function(event) {
        event.preventDefault();
        
            var url = $(this).attr("href");
            $.ajax({
                url: url,
                type: 'GET'
            })
            .done(function(result) {
                $('#estudiantes_lis').empty().html(result);
            })
            .fail(function() {
            });
            
        });

        function buscar_est(e, urli)
        {   
            if (e.keyCode == 13) 
            {
                var criterio = document.getElementById('buscar_est').value;
                var aux_url = urli;
                urli = aux_url.replace('criterio',criterio);
                $.ajax({
                    url: urli,
                    type: 'GET',
                })
                .done(function(result) {
                    $('#estudiantes_lis').empty().html(result);
                })
                .fail(function() {
                    console.log("error, cargando las asignaturas.");
                });
            }
        }
    </script>
    @stop

@else

@endif

