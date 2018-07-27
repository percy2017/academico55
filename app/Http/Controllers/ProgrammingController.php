<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Programacione;
use App\ProgramacionEstudiante;
use App\ImagenesProg;
use App\Asignatura;
use App\Educadore;
use App\Horario;
use App\Estudiante;
class ProgrammingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $total_car = DB::table('carreras')->count();
        $total_asi = DB::table('asignaturas')->count();
        $total_hor = DB::table('horarios')->count();
        return view('programming.index',compact('total_car','total_asi','total_hor'));
    } 

    public function prog_index()
    {
        $programaciones = DB::table('programaciones')
                            ->join('asignaturas','asignaturas.id','programaciones.asignatura_id')
                            ->join('periodos','periodos.id','asignaturas.periodo_id')
                            ->join('educadores','educadores.id','programaciones.educador_id')
                            ->join('horarios','horarios.id','programaciones.horario_id')
                            ->select('programaciones.*', 'asignaturas.id as asig_id', 'asignaturas.codigo','asignaturas.nombre as asignatura', 'periodos.nombre as periodo', 'educadores.apellidos as educador', 'horarios.nombre as horario')
                            ->where('programaciones.estado','=',true)
                            ->orderBy('programaciones.created_at','desc')
                            ->paginate(setting('admin.paginacion'));

        $total_prog = DB::table('programaciones')
                            ->join('asignaturas','asignaturas.id','programaciones.asignatura_id')
                            ->join('periodos','periodos.id','asignaturas.periodo_id')
                            ->join('educadores','educadores.id','programaciones.educador_id')
                            ->join('horarios','horarios.id','programaciones.horario_id')
                            ->select('programaciones.*', 'asignaturas.id as asig_id', 'asignaturas.codigo','asignaturas.nombre as asignatura', 'periodos.nombre as periodo', 'educadores.apellidos as educador', 'horarios.nombre as horario')
                            ->where('programaciones.estado','=',true)
                            ->orderBy('programaciones.created_at','desc')
                            ->count();
        

        $criterio ='';
    
        return view('programming.prog_index',compact('programaciones','criterio','total_prog'));                
    }

    public function prog_show($id)
    {
        $prog = DB::table('programaciones')
                        ->join('asignaturas','asignaturas.id','programaciones.asignatura_id')
                        ->join('periodos','periodos.id','asignaturas.periodo_id')
                        ->join('carreras_asignaturas', 'carreras_asignaturas.asignatura_id','asignaturas.id')
                        ->join('carreras','carreras.id','carreras_asignaturas.carrera_id')
                        ->join('users','users.id','programaciones.user_id')
                        ->join('horarios','horarios.id','programaciones.horario_id')
                        ->join('educadores','educadores.id','programaciones.educador_id')
                        ->join('profesiones','profesiones.id','educadores.profesion_id')
                        ->select('programaciones.*', 'carreras.nombre as carrera','asignaturas.nombre as asignatura', 'periodos.nombre as periodo','horarios.nombre as horario', 'horarios.hora_inicio','horarios.hora_fin','educadores.avatar', 'educadores.nombres', 'educadores.apellidos', 'profesiones.nombre as profesion')
                        ->where('programaciones.id',$id)
                        ->first();
        
        $estudiantes = DB::table('estudiantes')
                        ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                        ->join('carreras','carreras.id','inscripciones.carrera_id')
                        ->join('programacion_estudiante','programacion_estudiante.inscripciones_id','inscripciones.id')
                        ->join('programaciones','programaciones.id','programacion_estudiante.programacion_id')
                        ->select('estudiantes.*', 'inscripciones.id as insc_id', 'carreras.nombre as carrera','inscripciones.fecha_inicio')
                        ->where([['inscripciones.estado',true],['programacion_estudiante.programacion_id',$id]])
                        ->orderBy('estudiantes.apellidos_paterno','asc')
                        ->get();

        $total_est = DB::table('estudiantes')
                        ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                        ->join('carreras','carreras.id','inscripciones.carrera_id')
                        ->join('programacion_estudiante','programacion_estudiante.inscripciones_id','inscripciones.id')
                        ->join('programaciones','programaciones.id','programacion_estudiante.programacion_id')
                        ->select('estudiantes.*', 'inscripciones.id as insc_id', 'carreras.nombre as carrera','inscripciones.fecha_inicio')
                        ->where([['inscripciones.estado',true],['programacion_estudiante.programacion_id',$id]])
                        ->orderBy('estudiantes.apellidos_paterno','asc')
                        ->count();
        
        return view('programming.prog_show', compact('estudiantes','prog','total_est'));
    }
    public function prog_show_estudiantes($prog_id)
    {
        $estudiantes = DB::table('estudiantes')
        ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
        ->join('carreras','carreras.id','inscripciones.carrera_id')
        ->select('estudiantes.*','carreras.nombre as carrera','inscripciones.fecha_inicio','inscripciones.id as insc_id')
        ->where([['inscripciones.estado',true],['inscripciones.concluido',false]])
        ->orderBy('inscripciones.created_at','desc')
        ->paginate(setting('admin.paginacion'));

        $criterio ='';
        return view('programming.prog_estudiantes', compact('estudiantes','criterio','prog_id'));
    }

    public function prog_estudiantes_buscar($criterio, $prog_id)
    {
    	$estudiantes = DB::table('estudiantes')
                    ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                    ->join('carreras','carreras.id','inscripciones.carrera_id')
                    ->select('estudiantes.*','carreras.nombre as carrera','inscripciones.fecha_inicio','inscripciones.id as insc_id')
                    ->where([['inscripciones.estado',true],['inscripciones.concluido',false],['estudiantes.num_documento','like','%'.$criterio.'%']])
                    ->Orwhere([['inscripciones.estado',true],['inscripciones.concluido',false],['estudiantes.nombres','like','%'.$criterio.'%']])
                    ->Orwhere([['inscripciones.estado',true],['inscripciones.concluido',false],['estudiantes.apellidos_paterno','like','%'.$criterio.'%']])
                    ->paginate(6);
                    
        return view('programming.prog_estudiantes', compact('estudiantes','criterio','prog_id'));
    }

    public function prog_store(Request $datos)
    {
        Programacione::create([
        'fecha' => Carbon::now(),
        'asignatura_id' => $datos->asignatura_id,
        'educador_id' => $datos->educador_id,
        'horario_id' => $datos->horario_id,
        'observacion' => $datos->obervaciones,
        'user_id' => Auth::user()->id
         ]);

        return redirect('admin/programming/programacion_materias')->with(['message' => "Programación realizada correctamente..", 'alert-type' => 'info']);
    }

    public function prog_create()
    {   
        $asignaturas = Asignatura::get();
        $educadores = Educadore::get();
        $horarios = Horario::get();
        // return $asignauras;
        return view('programming.prog_create', compact('asignaturas','educadores','horarios'));
    }

    public function prog_show_est_add($insc_id, $prog_id)
    {
        $insc = DB::table('programacion_estudiante')
                ->where([['programacion_estudiante.programacion_id',$prog_id],['programacion_estudiante.inscripciones_id',$insc_id]])
                ->first();
        
        if($insc)
        {
            return redirect()->back()->with(['message' => "El Estudiante ya se encuantra Programado", 'alert-type' => 'warning']);
        }else
        {
            ProgramacionEstudiante::create([
            'programacion_id' => $prog_id,
            'inscripciones_id' => $insc_id
            ]); 
            return redirect()->back()->with(['message' => "Estudiante Programado Correctamente..!", 'alert-type' => 'info']);
        }
    }

    public function prog_show_est_delete($insc_id, $prog_id)
    {
        DB::table('programacion_estudiante')
                        ->where([['programacion_estudiante.programacion_id',$prog_id],['programacion_estudiante.inscripciones_id',$insc_id]])
                        ->delete();

        return redirect()->back()->with(['message' => "Estudiante Eliminado ", 'alert-type' => 'warning']);
    }

}
