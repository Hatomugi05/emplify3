<?php   
    session_start();   
    // Verificar si la sesión está vacía
    if (empty($_SESSION['nombre']) && empty($_SESSION['apellido'])) {       
        header('location:login/login.php');
        exit; // Asegurarse de detener el script después de redirigir
    }
?>

<style>
  ul li:nth-child(3) .activo {
    background: rgb(11, 150, 214) !important;
  }
</style>

<!-- primero se carga el topbar -->
<?php require('./layout/topbar.php'); ?>
<!-- luego se carga el sidebar -->
<?php require('./layout/sidebar.php'); ?>

<!-- inicio del contenido principal -->
<div class="page-content">

  <h4 class="text-center text-secondary">REGISTRO DE EMPLEADOS</h4>

  <?php
  include '../modelo/conexion.php';
  include '../controlador/controlador_registrar_empleado.php';
  ?>

  <div class="row">
    <form action="" method="POST">
      <!-- Campo para Nombre -->
      <div class="fl-flex-label mb-4 px-2 col-12 col-md-6">
        <input type="text" placeholder="Nombre" class="input input__text" name="txtnombre" required>
      </div>
      <!-- Campo para Apellido -->
      <div class="fl-flex-label mb-4 px-2 col-12 col-md-6">
        <input type="text" placeholder="Apellido" class="input input__text" name="txtapellido" required>
      </div>
      <!-- Campo para Cargo -->
      <div class="fl-flex-label mb-4 px-2 col-12 col-md-6">
        <select name="txtcargo" class="input input__select" required>
          <option value="">Seleccione...</option>
          <?php
          // Consulta a la tabla `cargo`
          $sql = $conexion->query("SELECT * FROM cargo");
          while ($datos = $sql->fetch_object()) {
              // Ajusta la columna del nombre si no es `id_nombre`
              echo "<option value='$datos->id_cargo'>$datos->nombre</option>";
          }
          ?>
        </select>
      </div>
      <!-- Campo para DNI -->
      <div class="fl-flex-label mb-4 px-2 col-12 col-md-6">
        <input type="text" placeholder="DNI" class="input input__text" name="txtdni" required>
      </div>
      <!-- Botones de Acción -->
      <div class="text-right p-2">
        <a href="empleado.php" class="btn btn-secondary btn-rounded">Atrás</a>
        <button type="submit" value="ok" name="btnregistrar" class="btn btn-primary btn-rounded">Registrar</button>
      </div>
    </form>
  </div>

</div>
</div>

<!-- fin del contenido principal -->

<!-- por último se carga el footer -->
<?php require('./layout/footer.php'); ?>
