<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use NumerosEnLetras;
use Carbon\Carbon;
use App\Estudiante;
use App\Inscripcione;
use App\Mensualidade;
use App\Pago;
use App\Recibo;
use App\InscEstado;
use App\ImagenesInsc;
class InscriptionController extends Controller
{
    public function __construct()
    {   
        $this->middleware('auth');
    }
    
    public function index()
    {
        $total_men = DB::table('mensualidades')->count();
        $total_rec = DB::table('recibos')->count();
        $total_ins = DB::table('inscripciones')->count();
        $total_pag = DB::table('pagos')->count();
        return view('inscription.index',compact('total_men','total_rec','total_ins','total_pag'));
    }

    public function control_index()
    {   
        $inscripciones = DB::table('inscripciones')
                            ->join('estudiantes','estudiantes.id', '=','inscripciones.estudiante_id')
                            ->join('carreras','carreras.id', '=','inscripciones.carrera_id')
                            ->join('horarios','horarios.id', '=','inscripciones.horario_id')
                            ->join('tipos','tipos.id', '=','inscripciones.tipo_id')
                            ->select('inscripciones.*', 'estudiantes.num_documento', 'estudiantes.nombres', 'estudiantes.apellidos_paterno', 'estudiantes.apellidos_materno', 'carreras.nombre as carrera','horarios.nombre as horario','tipos.nombre as tipo','estudiantes.id as estudiante_id')
                            ->OrderBy('inscripciones.created_at','desc')
                            ->paginate(setting('admin.paginacion'));
        //return $inscripciones;
                            
        $total = DB::table('inscripciones')
                        ->join('estudiantes','estudiantes.id', '=','inscripciones.estudiante_id')
                        ->join('carreras','carreras.id', '=','inscripciones.carrera_id')
                        ->join('horarios','horarios.id', '=','inscripciones.horario_id')
                        ->join('tipos','tipos.id', '=','inscripciones.tipo_id')
                        ->count();

        $suma = DB::table('inscripciones')
                        ->join('estudiantes','estudiantes.id', '=','inscripciones.estudiante_id')
                        ->join('carreras','carreras.id', '=','inscripciones.carrera_id')
                        ->join('horarios','horarios.id', '=','inscripciones.horario_id')
                        ->join('tipos','tipos.id', '=','inscripciones.tipo_id')
                        ->sum('inscripciones.monto');

        $filtro = '';
        $criterio ='';

        return view('inscription.control_index',compact('inscripciones','criterio','filtro','total','suma'));
    }   

    public function control_create()
    {
        $carreras = DB::table('carreras')->get();
        $horarios = DB::table('horarios')->where('habilitado',true)->get();
        $sexos = DB::table('sexualidades')->get();
        $docs = DB::table('documentos')->get();
        $tipos = DB::table('tipos')->get();
        return view('inscription.control_create',compact('carreras','horarios','sexos','docs','tipos'));
    }
    public function control_storage(Request $request)
    {
        //return $request->all();
        $aux_cuota = $request->estado ? true : false; 

        $estudiante = Estudiante::create([
        'nombres' => $request->nombres,
        'apellidos_paterno' => $request->apellidos_paterno,
        'apellidos_materno' => $request->apellidos_materno,
        'documento_id' => 1,
        'num_documento' => $request->num_documento.' '.$request->expedido,
        'telefono' => $request->telefono,
        'telefono2' => $request->telefono2,
        'direccion' => $request->direccion,
        'user_id' => Auth::user()->id,
        'sexualidad_id' => $request->sexualidad_id
         ]);
        
        //Inscripciones
        $insc = Inscripcione::create([
        'fecha_insc' => Carbon::now(),
        'user_id' => Auth::user()->id,
        'carrera_id' => $request->carrera_id,
        'horario_id' => $request->horario_id,
        'fecha_inicio' => $request->fecha_inicio,
        'observaciones' => $request->observaciones,
        'estudiante_id' => $estudiante->id,
        'monto' =>  $request->monto_fijo,
        'tipo_id' => $request->tipo_id
        ]);

        //Recibo
        $num_recibo = DB::table('recibos')->count()+1;
        $num_recibo = str_pad($num_recibo,6,'0',STR_PAD_LEFT).'/'.Carbon::now()->year;
        $recibo = $recibo = Recibo::create([
        'fecha' => Carbon::now(),
        'numero' => $num_recibo,
        'concepto' => $request->observaciones,
        'user_id' => Auth::user()->id,
        'monto_numeral' => $request->monto, 
        'monto_literal' => NumerosEnLetras::convertir($request->monto, 'Bolivianos',true),
        'estudiante_id' => $estudiante->id
        ]);

        //Mensualidad
        $mens = Mensualidade::create([
        'num_mens' => 1,
        'fecha_pago' => Carbon::now(),
        'monto' => $request->monto,
        'fecha_inicio' => $request->fecha_inicio,
        'fecha_final' => Carbon::parse($request->fecha_inicio)->addMonth(),
        'user_id' => Auth::user()->id,
        'inscripcion_id' => $insc->id,
        'observaciones' => $request->observaciones,
        'estado' => $request->estado ? true : false,
        'recibo_id' => $recibo->id
        ]);

        //Pago
        if($aux_cuota)
        {
            
        }else
        {
             Pago::create([
                'fecha_pago' => Carbon::now(),
                'mensualidad_id' =>$mens->id,
                'user_id' => Auth::user()->id,
                'monto' => $request->monto,
                'observaciones' => $request->observaciones,
                'recibo_id' => $recibo->id
                ]);
        
        }

        //$this->boleta($insc);
        return redirect('/admin/inscription/control/show/'.$insc->id)->with(['message' => "Inscripción del estudiante, se realizo con exito.", 'alert-type' => 'info']);
    }

    public function control_search(Request $datos)
    {
        $criterio = $datos->buscar;
        $filtro = $datos->filtro;
        if ($criterio) 
        {
            $inscripciones = DB::table('inscripciones')
                            ->join('estudiantes','estudiantes.id', '=','inscripciones.estudiante_id')
                            ->join('carreras','carreras.id', '=','inscripciones.carrera_id')
                            ->join('tipos','tipos.id','inscripciones.tipo_id')
                            ->join('horarios','horarios.id', '=','inscripciones.horario_id')
                            ->select('inscripciones.*', 'estudiantes.num_documento', 'estudiantes.nombres', 'estudiantes.apellidos_paterno', 'estudiantes.apellidos_materno', 'carreras.nombre as carrera','horarios.nombre as horario', 'tipos.nombre as tipo')
                            ->where('estudiantes.'.$filtro,'like','%'.$criterio.'%')
                            ->OrderBy('inscripciones.created_at','desc')
                            ->paginate(setting('admin.paginacion'));

            $total = DB::table('inscripciones')
                            ->join('estudiantes','estudiantes.id', '=','inscripciones.estudiante_id')
                            ->join('carreras','carreras.id', '=','inscripciones.carrera_id')
                            ->join('horarios','horarios.id', '=','inscripciones.horario_id')
                            ->join('tipos','tipos.id', '=','inscripciones.tipo_id')
                            ->where('estudiantes.'.$filtro,'like','%'.$criterio.'%')
                            ->count();

            $suma = DB::table('inscripciones')
                            ->join('estudiantes','estudiantes.id', '=','inscripciones.estudiante_id')
                            ->join('carreras','carreras.id', '=','inscripciones.carrera_id')
                            ->join('horarios','horarios.id', '=','inscripciones.horario_id')
                            ->join('tipos','tipos.id', '=','inscripciones.tipo_id')
                            ->where('estudiantes.'.$filtro,'like','%'.$criterio.'%')
                            ->sum('inscripciones.monto');

            return view('inscription.control_index',compact('inscripciones','criterio','filtro','total','suma'));
        }else
        {
            return redirect('/admin/inscription/control')->with(['message' => "Debe ingresar un criterio de busqueda", 'alert-type' => 'warning']);
        }
    }

    public function control_show($id)
    {
        $estudiante = DB::table('estudiantes')
                        ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                        ->join('horarios','inscripciones.horario_id','horarios.id')
                        ->join('carreras','carreras.id','inscripciones.carrera_id')
                        ->join('tipos','tipos.id','inscripciones.tipo_id')
                        ->join('sexualidades','sexualidades.id','estudiantes.sexualidad_id')
                        ->select('estudiantes.*','inscripciones.*', 'estudiantes.id as estudiante_id', 'inscripciones.id as insc','horarios.nombre as horario','carreras.nombre as carrera','tipos.nombre as tipo', 'sexualidades.nombre as sexo')
                        ->where('inscripciones.id','=',$id)
                        ->first();

        $mensualidades = DB::table('mensualidades')
                        ->join('users','users.id','mensualidades.user_id')
                        ->join('recibos','recibos.id','mensualidades.recibo_id')
                        ->select('mensualidades.*', 'recibos.numero', 'recibos.id as recibo_id', 'users.name')
                        ->where('mensualidades.inscripcion_id',$id)
                        ->get();
                        
        $ult_men = DB::table('mensualidades')
                    ->where('mensualidades.inscripcion_id',$id)
                    ->orderBy('num_mens','desc')
                    ->first();
        return view('inscription.control_show',compact('estudiante','mensualidades','ult_men'));
    }

    public function control_recibo($id)
    {
        $recibo = DB::table('recibos')
                    ->join('users','users.id','recibos.user_id')
                    ->join('estudiantes','estudiantes.id','recibos.estudiante_id')
                    ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                    ->join('carreras','carreras.id','inscripciones.carrera_id')
                    ->select('recibos.*','users.name', 'estudiantes.nombres','estudiantes.apellidos_paterno','estudiantes.apellidos_materno','carreras.nombre as carrera')
                    ->where('recibos.id','=',$id)
                    ->first();

        $vista = view('inscription.control_recibo',compact('recibo'));
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($vista);
        return $pdf->stream();
    }
    public function control_pagos($id)
    {
        $pagos = DB::table('pagos')
                ->join('mensualidades','mensualidades.id','pagos.mensualidad_id')
                ->join('users','users.id','pagos.user_id')
                ->join('recibos','recibos.id','pagos.recibo_id')
                ->select('pagos.*','users.name','recibos.numero','recibos.id as recibo_id')
                ->where('pagos.mensualidad_id',$id)
                ->get();

        $insc = DB::table('inscripciones')
                ->join('mensualidades', 'mensualidades.inscripcion_id', '=', 'inscripciones.id')
                ->select('inscripciones.*','mensualidades.estado as estado')
                ->where('mensualidades.id','=',$id)
                ->first();

        $insc_id = $insc->id;
        $estado = $insc->estado;
        $estudiante_id = $insc->estudiante_id;

        if (count($pagos) > 0) {
            return view('inscription.control_pagos',compact('pagos','id','insc_id','estado','estudiante_id'));
        } else {
            return redirect()->back()->with(['message' => 'No Tienes pago mas pagos en esta mesualidad', 'alert-type' => 'info']);
        }
        

        
    }

    public function control_pagos_storage(Request $request)
    {
        $num_recibo = DB::table('recibos')->count()+1;
        $num_recibo = str_pad($num_recibo,6,'0',STR_PAD_LEFT).'/'.Carbon::now()->year;

        //recibos
        $recibo = $recibo = Recibo::create([
        'fecha' => Carbon::now(),
        'numero' => $num_recibo,
        'concepto' => $request->observaciones,
        'user_id' => Auth::user()->id,
        'monto_numeral' => $request->monto, 
        'monto_literal' => NumerosEnLetras::convertir($request->monto, 'Bolivianos',true),
        'estudiante_id' => $request->estudiante_id
        ]);

        //pagos
        Pago::create([
            'fecha_pago' => Carbon::now(),
            'mensualidad_id' =>$request->mens,
            'user_id' => Auth::user()->id,
            'monto' => $request->monto,
            'observaciones' => $request->observaciones,
            'recibo_id' => $recibo->id
            ]);

        $suma = Pago::where('mensualidad_id','=',$request->mens)->sum('monto');
        
        $mensualidad = Mensualidade::find($request->mens);
        $mensualidad->monto = $suma;
        $mensualidad->estado = $request->estado ? true : false;
        $mensualidad->observaciones = $request->observaciones;
        $mensualidad->user_id = Auth::user()->id;
        $mensualidad->recibo_id = $recibo->id;
        $mensualidad->save();

        return redirect('/admin/inscription/control/show/'.$request->insc)->with(['message' => "Pago Realizado correctamente.", 'alert-type' => 'info']);
    }

    public function control_mensualidad_storage(Request $request)
    {
        $num_recibo = DB::table('recibos')->count()+1;
        $num_recibo = str_pad($num_recibo,6,'0',STR_PAD_LEFT).'/'.Carbon::now()->year;
        $recibo = $recibo = Recibo::create([
        'fecha' => Carbon::now(),
        'numero' => $num_recibo,
        'concepto' => $request->observaciones,
        'user_id' => Auth::user()->id,
        'monto_numeral' => $request->monto, 
        'monto_literal' => NumerosEnLetras::convertir($request->monto, 'Bolivianos',true),
        'estudiante_id' => $request->estudiante_id
        ]);

        if($request->estado)
        {
            //Mensualidades
            $cont = Mensualidade::where('inscripcion_id', $request->insc)->count()+1;
            $mens = Mensualidade::create([
            'num_mens' => $cont,
            'fecha_pago' => Carbon::now(),
            'monto' => $request->monto,
            'fecha_inicio' => $request->fecha_inicio,
            'fecha_final' => $request->fecha_final,
            'user_id' => Auth::user()->id,
            'inscripcion_id' => $request->insc,
            'observaciones' => $request->observaciones,
            'estado' => $request->estado ? true : false,
            'recibo_id' => $recibo->id
            ]);
        }else
        {
            //Mensualidades
            $cont = Mensualidade::where('inscripcion_id', $request->insc)->count()+1;
            $mens = Mensualidade::create([
            'num_mens' => $cont,
            'fecha_pago' => Carbon::now(),
            'monto' => $request->monto,
            'fecha_inicio' => $request->fecha_inicio,
            'fecha_final' => $request->fecha_final,
            'user_id' => Auth::user()->id,
            'inscripcion_id' => $request->insc,
            'observaciones' => $request->observaciones,
            'estado' => $request->estado ? true : false,
            'recibo_id' => $recibo->id
            ]);

            //Pagos
            Pago::create([
            'fecha_pago' => Carbon::now(),
            'mensualidad_id' =>$mens->id,
            'user_id' => Auth::user()->id,
            'monto' => $request->monto,
            'observaciones' => $request->observaciones,
            'recibo_id' => $recibo->id
            ]);
            
        }

        return redirect('/admin/inscription/control/show/'.$request->insc)->with(['message' => 'Pago realizado correctamente.']);
    }


    public function control_pdf($insc)
    {
        $estudiante = DB::table('estudiantes')
                        ->join('sexualidades','sexualidades.id','estudiantes.sexualidad_id')
                        ->join('inscripciones','inscripciones.estudiante_id','estudiantes.id')
                        ->join('tipos','tipos.id','inscripciones.tipo_id')
                        ->join('users','users.id','inscripciones.user_id')
                        ->join('horarios','inscripciones.horario_id','horarios.id')
                        ->join('carreras','carreras.id','inscripciones.carrera_id')
                        ->select('estudiantes.*','inscripciones.*', 'inscripciones.id as insc','horarios.nombre as horario','carreras.nombre as carrera','users.name','sexualidades.nombre as sexo', 'tipos.nombre as tipo','inscripciones.observaciones as obs')
                        ->where('inscripciones.id','=',$insc)
                        ->orderBy('inscripciones.fecha_insc','desc')
                        ->first();

        
        $vista = view('inscription.control_pdf',compact('estudiante'));
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($vista);
        return $pdf->stream();
    }

    public function control_imagenes($id)
    {
        $insc = DB::table('inscripciones')->find($id);
        $imagenes = DB::table('imagenes_insc')
                ->join('inscripciones','inscripciones.id','imagenes_insc.insc_id')
                ->select('imagenes_insc.*')
                ->where([['inscripciones.id',$id],['imagenes_insc.estado',true]])
                ->get();
        return view('inscription.control_imagenes',compact('insc','imagenes'));
    }
    public function control_imagenes_add(Request $request)
    {
        ImagenesInsc::create([
            'fecha' =>  Carbon::now(),
            'user_id' => Auth::user()->id,
            'insc_id' => $request->insc_id,
            'ruta' => $request->ruta->getClientOriginalName(),
            'descripcion' => $request->descripcion,
            'estado' => true
        ]);

        
        \Storage::disk('imagenes_isc')->put($request->ruta->getClientOriginalName(), \File::get($request->ruta));

        return redirect('/admin/inscription/control/imagenes/'.$request->insc_id)->with(['message' => "Imagen Cargada Correctamente", 'alert-type' => 'info']);
    }

    public function control_imagenes_delete($id, $insc)
    {   
        DB::table('imagenes_insc')
            ->where('id', $id)
            ->update(['estado' => false]);
        return redirecT('/admin/inscription/control/imagenes/'.$insc)->with(['message' => "Imagen eliminada correctamente", 'alert-type' => 'info']);
    }   

    public function control_estado(Request $datos)
    {
        $insc = Inscripcione::find($datos->insc_id);
        if($insc->estado)
        {
            $insc->estado = false;
        }else
        {
            $insc->estado = true;
        }
        $insc->save();

        InscEstado::create([
            'fecha' => Carbon::now(),
            'user_id' => Auth::user()->id,
            'insc_id' => $insc->id,
            'observacion' => $datos->observ
        ]);

        return redirect()->back()->with(['message' => "Estudiante Actualizado", 'alert-type' => 'info']);
    } 
    public function control_deudores()
    {
        $insc = DB::table('mensualidades')
                ->join('inscripciones','inscripciones.id','mensualidades.inscripcion_id')
                ->join('estudiantes','estudiantes.id','inscripciones.estudiante_id')
                ->select('inscripciones.id', 'inscripciones.fecha_inicio', 'estudiantes.num_documento', 'estudiantes.nombres', 'estudiantes.apellidos_paterno', 'estudiantes.apellidos_materno', DB::raw('MAX(mensualidades.fecha_final) as ultimo'))
                ->where([['inscripciones.estado',true],['mensualidades.fecha_final','<',Carbon::now()]])
                ->groupBy('inscripciones.id','inscripciones.fecha_inicio', 'estudiantes.num_documento','estudiantes.nombres', 'estudiantes.apellidos_paterno', 'estudiantes.apellidos_materno')
                ->get();
                
        return view('inscription.control_deudores',compact('insc'));
    }

    public function control_notas($insc)
    {
        $notas = DB::table('notas')
                ->join('programaciones','programaciones.id','notas.programacion_id')
                ->join('asignaturas','asignaturas.id','programaciones.asignatura_id')
                ->join('educadores','educadores.id','programaciones.educador_id')
                ->join('inscripciones','inscripciones.id','notas.insc_id')
                ->where('notas.insc_id',$insc)
                ->select('notas.*','asignaturas.nombre','educadores.nombres','educadores.apellidos')
                ->get();
        return view('inscription.control_notas',compact('notas'));
    }
}
