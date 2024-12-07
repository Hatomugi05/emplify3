<?php
if (!empty($_POST["btnmodificar"])) {
    if (!empty($_POST["txtid"])) {
        // Sanitizar entradas para evitar SQL Injection
        $id = $conexion->real_escape_string($_POST["txtid"]);
        $nombre = $conexion->real_escape_string($_POST["txtnombre"]);
        $telefono = $conexion->real_escape_string($_POST["txttelefono"]);
        $ubicacion = $conexion->real_escape_string($_POST["txtubicacion"]);
        $ruc = $conexion->real_escape_string($_POST["txtruc"]);

        // Actualización de la base de datos
        $sql = $conexion->query("
            UPDATE empresa 
            SET nombre = '$nombre', 
                telefono = '$telefono', 
                ubicacion = '$ubicacion', 
                ruc = '$ruc' 
            WHERE id_empresa = $id
        ");

        // Notificaciones usando PNotify
        if ($sql == true) { ?>
            <script>
                $(function notificacion() {
                    new PNotify({
                        title: "CORRECTO",
                        type: "success",
                        text: "Los datos se han modificado correctamente",
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
                        text: "Error al modificar los datos",
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
                    text: "No se ha enviado el Identificador",
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
