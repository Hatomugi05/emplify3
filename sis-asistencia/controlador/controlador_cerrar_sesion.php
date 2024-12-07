<?php
session_start();
session_destroy();
echo "Redirigiendo...";
header("location:/sis-asistencia/vista/login/login.php");
exit();
?>