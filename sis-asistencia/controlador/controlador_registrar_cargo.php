<?php 
if (!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["txtnombre"])) {
        $nombre = $_POST["txtnombre"];

        // Verificar si el cargo ya existe
        $verificarNombre = $conexion->prepare("SELECT COUNT(*) as total FROM cargo WHERE nombre = ?");
        $verificarNombre->bind_param("s", $nombre);
        $verificarNombre->execute();
        $resultado = $verificarNombre->get_result()->fetch_object();

        if ($resultado->total > 0) { ?>
            <script>
                $(function notificacion() {
                    new PNotify({
                        title: "ERROR",
                        type: "error",
                        text: "El cargo <?= htmlspecialchars($nombre, ENT_QUOTES, 'UTF-8') ?> ya existe",
                        styling: "bootstrap3"
                    });
                });
            </script>
        <?php } else { 
            // Insertar nuevo cargo
            $sql = $conexion->prepare("INSERT INTO cargo (nombre) VALUES (?)");
            $sql->bind_param("s", $nombre);

            if ($sql->execute()) { ?>
                <script>
                    $(function notificacion() {
                        new PNotify({
                            title: "CORRECTO",
                            type: "success",
                            text: "Cargo registrado correctamente",
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
                            text: "Error al registrar el cargo",
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
                    text: "El campo nombre está vacío",
                    styling: "bootstrap3"
                });
            });
        </script>
    <?php } ?>
    <script>
        // Evitar reenvío del formulario al recargar la página
        setTimeout(() => {
            window.history.replaceState(null, null, window.location.pathname);
        }, 0);
    </script>
<?php } ?>
