<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de bienvenida</title>
    <link rel="stylesheet" href="public/estilos/estilos.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@0,300;400&&display=swap" rel="stylesheet">

    <link href="public/pnotify/css/pnotify.css" rel="stylesheet" />
    <link href="public/pnotify/css/pnotify.buttons.css" rel="stylesheet" />
    <link href="public/pnotify/css/custom.min.css" rel="stylesheet" />
    <script src="public/pnotify/js/jquery.min.js">
    </script>
    <script src="public/pnotify/js/pnotify.js">
    </script>
    <script src="public/pnotify/js/pnotify.buttons.js">
    </script>
</head>
<body>
    <?php
    date_default_timezone_set('America/Mexico_City');
    ?>
    <H1>BIENVENIDO, REGISTRA TU ASISTENCIA</H1>
    <h2 id="fecha"><?= date("d/m/Y, h:i:s")?></h2>
    <?php
    include "modelo/conexion.php";
    include "controlador/controlador_registrar_asistencia.php";

    ?>
    <div class="container">
        <a class="acceso" href="vista/login/login.php">Ingresar al sistema</a>
        <p class="dni">Ingrese su DNI</p>
        <form action="" method="POST">
            <input type="number" placeholder="DNI del empleado" name="txtdni" id="txtdni">
            <div class="botones">


                <button class=entrada type="submit" name="btnentrada" value="ok">ENTRADA</button>
                <button class=salida type="submit" name="btnsalida" value="ok">SALIDA</button>
            </div>
        </form>

    </div>


    <script>
        setInterval(() => {
            let fecha=new Date();
            let fechaHora=fecha.toLocaleString();
            document.getElementById("fecha").textContent=fechaHora;
        }, 1000);
    </script>

    <script>
        let dni=document.getElementById("txtdni");
        dni.addEventListener("input", function(){
            if (this.value.length > 8) {
                this.value=this.value.slice(0,8)
            }
        })
    </script>
</body>
</html>