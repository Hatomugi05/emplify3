<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$image = file_get_contents($_FILES['image']['tmp_name']); // Obtiene el contenido del archivo

// Validación del tamaño y tipo de archivo
if ($_FILES["image"]["size"] > 1000000) {
    header("location:../?r=3478");
    exit();
}

$allowed_types = ['image/jpeg', 'image/png', 'image/gif'];
if (!in_array($_FILES['image']['type'], $allowed_types)) {
    header("location:../?r=invalid_file_type");
    exit();
}

try {
    // Conexión a la base de datos
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Actualización del avatar
    $stmt = $conn->prepare("UPDATE tbl_users SET avatar = :avatar WHERE member_no = :member_no");
    $stmt->bindParam(':avatar', $image, PDO::PARAM_LOB);
    $stmt->bindParam(':member_no', $myid);
    $stmt->execute();

    // Actualización de la sesión
    $_SESSION['avatar'] = $image;

    header("location:../");
    exit();

} catch (PDOException $e) {
    error_log("Error updating avatar: " . $e->getMessage());
    header("location:../?r=error_updating");
    exit();
}
