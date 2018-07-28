
    @extends('voyager::master')
    @section('css')
    @stop
    @section('page_header')
    @stop
    @section('content')
    <div class="row">

        <div class="col-xs-12 col-sm-3 col-md-3">
        
            <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
                <div class="dimmer"></div>
            
                <div class="panel-content">
                
                    <i class='voyager-group'></i>
                    <!-- <h4>Usuarios</h4> -->
                    <!--    <p></p> -->
                    <a href="{{ url('/admin/notes/index') }}" class="btn btn-primary btn-lg">CONTROL</a>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-3 col-md-3">
            <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;;">
                <!-- <div class="dimmer"></div> -->
                <div class="panel-content">
                    <i class='voyager-settings'></i>
                    <!-- <h4>Usuarios</h4> -->
                    <!--    <p></p> -->
                    <a href="#" class="btn btn-primary btn-lg">ESTUDIANTES</a>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-3 col-md-3">
            <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
                <!-- <div class="dimer"></div> -->
                <div class="panel-content">
                    <i class='voyager-wand'></i>
                    <!-- <h4>Usuarios</h4> -->
                    <!--    <p></p> -->
                    <a href="{{ route('voyager.permissions.index') }}" class="btn btn-primary btn-lg">REGISTROS</a>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-3 col-md-3">
            <div class="panel widget center bgimage" style="margin-bottom:0;overflow:hidden;background-color: #343C46;">
                <!-- <div class="dimer"></div> -->
                <div class="panel-content">
                    <i class='voyager-github-icon'></i>
                    <!-- <h4>Usuarios</h4> -->
                    <!--    <p></p> -->
                    <a href="{{ route('voyager.educadores.index') }}" class="btn btn-primary btn-lg">EDUCADORES</a>
                </div>
            </div>
        </div>

    </div>
    @stop

    @section('javascript')
    @stop
