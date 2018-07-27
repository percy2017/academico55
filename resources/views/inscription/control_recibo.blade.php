<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> </title>
	<link rel="stylesheet" href="">
</head>
<body>
	<table  border="2" style="width: 100%;">
		<tr>
			<td>
				
				<table border="0" style="width: 100%;">
					<tr>
	                  <td colspan="" rowspan="" headers="">
	                    <div style="text-align: left;">
	                     	<img src="{{ asset('storage/settings/July2018/logo.jpeg') }}" width="80px" alt="">
							<br><small>{{setting('admin.description')}}</small>
	                   </div>
	                  </td>

	                  <td>
	                    <div style="text-align: right;">
	                     N°: <strong>{{ $recibo->numero }}</strong>
	                     <br>
	                     Fecha: <strong>{{ \Carbon\Carbon::now() }}</strong>
	                   </div>
	                  </td>
	                </tr>
	                <tr>
	                	<td colspan="2" rowspan="" headers="" style="text-align: center; font-size: 28px;">
	                		<strong>RECIBO</strong>
	                	</td>

	                </tr>
	                
	                
				</table>
				<hr style="color: ;">
				<table border="0" style="width: 100%;">
					<tr>
						<td colspan="" rowspan="" headers="">
							<strong>Estudiante: </strong>
						</td>
						<td colspan="" rowspan="" headers="">
							<strong>Carrera:</strong>
						</td>
					</tr>
					<tr>
	                	<td colspan="" rowspan="" headers="" style="">
	                		{{$recibo->nombres}} {{ $recibo->apellidos_paterno }} {{ $recibo->apellidos_materno }}
	                	</td>
	                	<td colspan="" rowspan="" headers="" style="">
	                		{{$recibo->carrera}}
	                	</td>
	                </tr>
					<tr>
						<td colspan="" rowspan="" headers="">
							<strong>Concepto: </strong>
						</td>
						<td colspan="" rowspan="" headers="" style="">
							<strong>Monto: </strong>
						</td>
					</tr>
					<tr>
	                	<td colspan="" rowspan="" headers="" style="">
	                		{{ $recibo->concepto }}
	                	</td>
						<td colspan="" rowspan="" headers="" style="">
	                		 {{ $recibo->monto_literal }}
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
                           <br>{{ $recibo->name }}
                           <br>Recibi Conforme
                       </td>
                       <td style="text-align: center; font-size: 10px:">
                           --------------------------------------
                          <br> 
                          <br>Entregue Conforme
                       </td>
                   </tr>
               </table>

			</td>

		</tr>		
	</table>
</body>
</html>