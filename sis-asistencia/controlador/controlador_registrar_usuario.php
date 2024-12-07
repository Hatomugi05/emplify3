<?php

if (!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["txtnombre"]) && !empty($_POST["txtapellido"]) && !empty($_POST["txtusuario"]) && !empty($_POST["txtpassword"])) {
        $nombre = $_POST["txtnombre"];
        $apellido = $_POST["txtapellido"];
        $usuario = $_POST["txtusuario"];
        $password = md5($_POST["txtpassword"]);

        $sql = $conexion->query("SELECT COUNT(*) AS 'total' FROM usuario WHERE usuario='$usuario'");
        if ($sql->fetch_object()->total > 0) { ?>
            <script>
                $(function notificacion() {
                    new PNotify({
                        title: "ERROR",
                        type: "error",
                        text: "El usuario <?= $usuario ?> ya existe",
                        styling: "bootstrap3"
                    });
                });
            </script>
        <?php } else {
            // Asegúrate de incluir todas las columnas necesarias en el INSERT
            $registro = $conexion->query("INSERT INTO usuario(nombre, apellido, usuario, password) VALUES ('$nombre', '$apellido', '$usuario', '$password')");

            if ($registro == true) { ?>
                <script>
                $(function notificacion() {
                    new PNotify({
                        title: "CORRECTO",
                        type: "success",
                        text: "El usuario se ha registrado correctamente",
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
                        text: "Error al registrar usuario",
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
    <?php } ?>

    <script>
        setTimeout(() => {
            window.history.replaceState(null, null, window.location.pathname);
        }, 0);
    </script>
<?php } ?>
