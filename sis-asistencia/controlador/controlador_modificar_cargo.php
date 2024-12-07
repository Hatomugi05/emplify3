<?php
if (!empty($_POST["btnmodificar"])) {
    if (!empty($_POST["txtnombre"]) && !empty($_POST["txtid"])) {
        $nombre = $_POST["txtnombre"];
        $id = intval($_POST["txtid"]);

        // Verificar si el nombre ya existe en otro cargo
        $verificarNombre = $conexion->query("SELECT COUNT(*) AS total FROM cargo WHERE nombre = '$nombre' AND id_cargo != $id");

        if ($verificarNombre) {
            $resultado = $verificarNombre->fetch_object();
            if ($resultado->total > 0) { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "INCORRECTO",
                            type: "error",
                            text: "El nombre <?= htmlspecialchars($nombre, ENT_QUOTES, 'UTF-8') ?> ya existe",
                            styling: "bootstrap3"
                        });
                    });
                </script>
            <?php } else {
                // Actualizar el cargo
                $sql = $conexion->query("UPDATE cargo SET nombre = '$nombre' WHERE id_cargo = $id");
                if ($sql) { ?>
                    <script>
                        $(function notificacion() {
                            new PNotify({
                                title: "CORRECTO",
                                type: "success",
                                text: "Cargo modificado correctamente",
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
            }
        } else {
            die("Error en la consulta SQL: " . $conexion->error);
        }
    } else { ?>
        <script>
            $(function notificacion() {
                new PNotify({
                    title: "INCORRECTO",
                    type: "error",
                    text: "Los campos están vacíos",
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
