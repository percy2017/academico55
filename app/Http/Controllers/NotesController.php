<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Nota;
use App\Programacione;


class NotesController extends Controller
{
    public function __construct()
    {
        //$this->middleware('web');
        $this->middleware('auth');
        
    }
    // inicio del mdulo
    public function index()
    {
        return view('notes.index');
    } 

    // Inicio de la notas.
    public function notas_index()
    {   
        $programaciones = DB::table('programaciones')
                            ->join('educadores','educadores.id','programaciones.educador_id')
                            ->join('horarios','horarios.id','programaciones.horario_id')
                            ->join('asignaturas','asignaturas.id','programaciones.asignatura_id')
                            ->select('programaciones.*','educadores.nombres','educadores.apellidos','asignaturas.nombre as asignatura','horarios.nombre as horario')
                            ->where('programaciones.estado','=',true)
                            ->orderBy('programaciones.created_at','desc')
                            ->paginate(setting('admin.paginacion'));

        $criterio = '';
        
        return view('notes.notas_index',compact('programaciones','criterio'));
    }

    public function notas_show($prog_id)
    {
        $prog = DB::table('programaciones')
                    ->join('asignaturas','asignaturas.id','programaciones.asignatura_id')
                    ->join('educadores','educadores.id','programaciones.educador_id')
                    ->select('asignaturas.*','educadores.*','programaciones.nota_estado','programaciones.nota_estado')
                    ->where('programaciones.id',$prog_id)
                    ->first();
                            
        
        if ($prog->nota_estado) 
        {
            $estudiantes = DB::table('estudiantes')
                    ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                    ->join('programacion_estudiante','programacion_estudiante.inscripciones_id','inscripciones.id')
                    ->select('estudiantes.*','inscripciones.id as insc')
                    ->where([['inscripciones.estado',true],['programacion_estudiante.programacion_id',$prog_id]])
                    ->orderBy('estudiantes.apellidos_paterno','asc')
                    ->get();

            if (count($estudiantes)>0) 
            {
                return view('notes.notas_show',compact('prog_id','prog','estudiantes'));
            }else
            {
                return redirect()->back()->with(['message' => "No hay estudiantes registrados.!", 'alert-type' => 'info']);
            } 
        } else {
            $estudiantes = DB::table('notas')
                        ->join('inscripciones','inscripciones.id','notas.insc_id')
                        ->join('estudiantes','estudiantes.id','inscripciones.estudiante_id')
                        ->select('estudiantes.*','notas.nota','inscripciones.id as insc')
                        ->where('notas.programacion_id',$prog_id)
                        ->get();
            //return $estudiantes;
            return view('notes.notas_view',compact('prog','estudiantes'));
        }
              
               
    }

    public function notas_add_notas($prog_id, $insc_id, $nota)
    {
        Nota::create([
            'programacion_id' => $prog_id,
            'insc_id' => $insc_id,
            'nota' => $nota
        ]);

        $prog =  Programacione::find($prog_id);
        $prog->nota_estado = false;
        $prog->save(); 
    }
}
