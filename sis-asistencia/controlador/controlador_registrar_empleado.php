<?php 

if (!empty($_POST["btnregistrar"])) {
    // Verificar si los campos no están vacíos
    if (!empty($_POST["txtnombre"]) && !empty($_POST["txtapellido"]) && !empty($_POST["txtcargo"]) && !empty($_POST["txtdni"])) {
        // Asignación de variables
        $nombre = $_POST["txtnombre"];
        $apellido = $_POST["txtapellido"];
        $cargo = $_POST["txtcargo"];
        $dni = $_POST["txtdni"]; // Agregado txtdni para capturar el valor

        // Verificar si el DNI ya existe
        $sql = $conexion->query("SELECT COUNT(*) AS 'total' FROM empleado WHERE dni = '$dni';");
        if ($sql->fetch_object()->total > 0) { ?>
            <script>
                $(function notificacion() {
                    new PNotify({
                        title: "ERROR",
                        type: "error",
                        text: "El DNI <?= $dni ?> ya existe",
                        styling: "bootstrap3"
                    });
                });
            </script>
        <?php } else {
            // Registrar empleado
            $registro = $conexion->query("INSERT INTO empleado(nombre, apellido, cargo, dni) VALUES ('$nombre', '$apellido', '$cargo', '$dni');");
            if ($registro == true) { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "CORRECTO",
                            type: "success",
                            text: "Empleado registrado correctamente",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php } else { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "ERROR",
                            type: "error",
                            text: "Error al registrar empleado",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php }
        }
    } else { ?>
        <script>
            $(function notificacion() {
                new PNotify({
                    title: "ERROR",
                    type: "error",
                    text: "Los campos están vacíos",
                    styling: "bootstrap3"
                });
            });
        </script>
    <?php }
}

?>
