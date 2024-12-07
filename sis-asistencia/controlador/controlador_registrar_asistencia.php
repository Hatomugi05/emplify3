<?php
// Establecer la zona horaria
date_default_timezone_set('America/Mexico_City');



if (!empty($_POST["btnentrada"])) {
    if (!empty($_POST["txtdni"])) {
        $dni = $_POST["txtdni"];
        $consulta = $conexion->query("SELECT COUNT(*) AS 'total' FROM empleado WHERE dni='$dni'");
        $id = $conexion->query("SELECT id_empleado FROM empleado WHERE dni='$dni'");
        
        if ($consulta->fetch_object()->total > 0) {
            // Usar H para formato de 24 horas
            $fecha = date("Y-m-d H:i:s");
            $id_empleado = $id->fetch_object()->id_empleado;
            $sql = $conexion->query("INSERT INTO asistencia(id_empleado, entrada) VALUES($id_empleado, '$fecha')");
            
            if ($sql == true) { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "CORRECTO",
                            type: "success",
                            text: "Hola, BIENVENIDO",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php } else { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "INCORRECTO",
                            type: "error",
                            text: "Error al registrar entrada",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php }
        } else { ?>
            <script>
                $(function notificacion() {
                    new PNotify({
                        title: "INCORRECTO",
                        type: "error",
                        text: "El DNI ingresado no existe",
                        styling: "bootstrap3"
                    });
                });
            </script>
        <?php }
    } else { ?>
        <script>
            $(function notificacion() {
                new PNotify({
                    title: "INCORRECTO",
                    type: "error",
                    text: "Ingresa el dni",
                    styling: "bootstrap3"
                });
            });
        </script>
    <?php } ?>
    <script>
        setTimeout(() => {
            window.history.replaceState(null, null, window.location.pathname);
        }, 0);
    </script>
<?php }
?>

<!--Registro Salida-->

<?php
// Establecer la zona horaria
date_default_timezone_set('America/Mexico_City');



if (!empty($_POST["btnsalida"])) {
    if (!empty($_POST["txtdni"])) {
        $dni = $_POST["txtdni"];
        $consulta = $conexion->query("SELECT COUNT(*) AS 'total' FROM empleado WHERE dni='$dni'");
        $id = $conexion->query("SELECT id_empleado FROM empleado WHERE dni='$dni'");
        
        if ($consulta->fetch_object()->total > 0) {
            // Usar H para formato de 24 horas
            $fecha = date("Y-m-d H:i:s");
            $id_empleado = $id->fetch_object()->id_empleado;
            $busqueda=$conexion->query("select id_asistencia from asistencia where id_empleado=$id_empleado order by id_asistencia desc limit 1 ");
            $id_asistencia=$busqueda->fetch_object()->id_asistencia;
            $sql = $conexion->query("update asistencia set salida='$fecha' where id_asistencia=$id_asistencia ");
            
            if ($sql == true) { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "CORRECTO",
                            type: "success",
                            text: "ADIOS, VUELVE PRONTO",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php } else { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "INCORRECTO",
                            type: "error",
                            text: "Error al registrar salida",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php }
        } else { ?>
            <script>
                $(function notificacion() {
                    new PNotify({
                        title: "INCORRECTO",
                        type: "error",
                        text: "El DNI ingresado no existe",
                        styling: "bootstrap3"
                    });
                });
            </script>
        <?php }
    } else { ?>
        <script>
            $(function notificacion() {
                new PNotify({
                    title: "INCORRECTO",
                    type: "error",
                    text: "Ingresa el dni",
                    styling: "bootstrap3"
                });
            });
        </script>
    <?php } ?>
    <script>
        setTimeout(() => {
            window.history.replaceState(null, null, window.location.pathname);
        }, 0);
    </script>
<?php }
?>