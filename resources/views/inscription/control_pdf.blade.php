<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{ $estudiante->insc }}</title>
    <link rel="stylesheet" href="">
</head>
<body>
    <table border="2" style="width: 100%;">
       <tr>
           <td>
               
                <img src="{{ asset('storage/settings/July2018/logo.jpeg') }}" width="60px" alt="">
               
               <table border="0" style="width: 100%;">
                <tr>
                  <td colspan="" rowspan="" headers="">
                    <div style="text-align: left;">
                     Fecha: <strong>{{ \Carbon\Carbon::now() }}</strong>
                   </div>
                  </td>
                  <td colspan="" rowspan="" headers="">
                    <div style="text-align: right;">
                     Inscripción N°: <strong>{{ $estudiante->insc }}</strong>
                   </div>
                  </td>
                </tr>
                  <tr>
                    <td colspan="2" rowspan="" headers="">
                      <div style="text-align: center; font-size: 20px;">
                          <strong><a href="#">BOLETA DE INCRIPCIÓN</a></strong>
                          <hr>
                      </div>
                    </td>
                  </tr>
                    <tr>
                        <td style="text-align: left;">
                            <strong><u><a href="#">DATOS DEL ESTUDIANTE</a></u></strong>
                        </td>
                        <td style="text-align: left;">
                            <strong><u><a href="#">DATOS DE LA INSCRIPCIÓN</a></u></strong>
                        </td>
                   </tr>
                        <tr>
                            <td style="text-align: left;">
                                <label for="">Estudiante:</label>
                                <br>
                                <strong>
                                    {{ $estudiante->nombres }} {{ $estudiante->apellidos_paterno }} {{ $estudiante->apellidos_materno }}
                                </strong>
                            </td>
                            <td style="text-align: left;">
                                <small>Fecha de Inscripción:</small>
                                <br>
                                <strong>
                                    {{ $estudiante->fecha_insc }}
                                </strong>
                            </td>
                       </tr>
                       <tr>
                            <td style="text-align: left;">
                                <label for="">Dirección:</label>
                                <br>
                                <strong>
                                    {{ $estudiante->direccion }}
                                </strong>
                            </td>
                            <td style="text-align: left;">
                                <label for="">Incio de Clase:</label>
                                <br>
                                <strong>
                                    {{ $estudiante->fecha_inicio }}
                                </strong>
                            </td>
                       </tr>
                       <tr>
                            <td style="text-align: left;">
                                <label for="">Telefono :</label>
                                <br>
                                <strong>
                                    {{ $estudiante->telefono }}
                                </strong>
                            </td>
                            <td style="text-align: left;">
                                <label for="">Carrera :</label>
                                <br>
                                <strong>
                                    {{ $estudiante->carrera }}
                                </strong>
                            </td>
                       </tr>
                       <tr>
                            <td style="text-align: left;">
                                <label for="">Docuemto :</label>
                                <br>
                                <strong>
                                    {{ $estudiante->num_documento }}
                                </strong>
                            </td>
                            <td style="text-align: left;">
                                <label for="">Horario :</label>
                                <br>
                                <strong>
                                    {{ $estudiante->horario }}
                                </strong>
                            </td>
                       </tr>                        
                   
               </table>
                <hr>
               <br>
               <br>
               <table border="0" style="width: 100%;">
                   <tr>
                       <td style="text-align: center; font-size: 10px:">
                           --------------------------------------
                           <br>{{ $estudiante->name }}
                           <br>Operador
                       </td>
                       <td style="text-align: center; font-size: 10px:">
                           --------------------------------------
                           <br>{{ $estudiante->nombres }} {{ $estudiante->apellidos_paterno }} {{ $estudiante->apellidos_materno }}
                          <br>Estudiante
                       </td>
                   </tr>
               </table>
           </td>
       </tr>
    </table>
    
</body>
</html>