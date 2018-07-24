<h1>Proyecto Academico v1.0</h1>

## Introducción
    El proyecto turiro es software realizado por la empresa LoginWeb, para el instituto CET-BENI
    para gestionar y administrar a los estudiantes su perfil academico.

-   Dominio:    https://turiro.com
-   Correo:     soporte@turiro.com
-   repositorio https://github.com/percy2017/academico55.git
## Instalación
-   <h2>Servidor Local</h2>Para realizar la instalacion local la applicacion necesita estos requerimientos.
    -   PHP ^7.0.0
    -   Composer
    -   Git

    Una Vez cumplidos estos requerimientos, clonar el repositorio.

    <code>git clone https://github.com/percy2017/academico55.git</code>

    Descargar Dependencias

    <code>composer install</code>

    copiar El el archivo .env de .env.example, configurar su conexion a la base de datos Mysql y Restaurar desde el archivo <code>db_academico.sql</code>

    <code>DB_DATABASE=homestead</code><br>
    <code>DB_USERNAME=homestead</code><br>
    <code>DB_PASSWORD=secret</code>

    Generar una Key

    <code>php artisan key:generate</code>

    Login:

    <code>admin@admin.com</code><br>
    <code>password</code><br>

-   <h2>Servidor Compartido</h2>para realizar el despliegue en servidor compoartido, debes dividir el proyecto en 2 carpetas 

    -   1.- academico
    -   2.- public_html 

    El el archivo /public_html/index.php, debes reemplazar y agregar las instrucciones.

    <code>
        require __DIR__.'/../academico/vendor/autoload.php';
    </code>
    <br>
    <code>
        $app = require_once __DIR__.'/../academico/bootstrap/app.php';
    </code>

## Creditos
    LoginWeb - Diseño y Desarrollo de Software. derechos reservados.

## Contacto
    Ing. Percy alvarez. cel. 71130523

