<form name="frm" action="app/create-account.php" method="POST" autocomplete="off">
<div class="login-box-wrapper">
							
<div class="modal-header">
<h4 class="modal-title text-center">Crea tu cuenta gratis</h4>
</div>

<div class="modal-body">
																
<div class="row gap-20">
											

												

												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Nombres</label>
<input class="form-control" placeholder="Ingresa tu Nombres" name="fname" required type="text"> 
</div>
												
</div>

<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Apellidos</label>
<input class="form-control" placeholder="Ingresa tu Apellidos" name="lname" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Correo Electrónico</label>
<input class="form-control" placeholder="Ingresa Correo Electrónico" name="email" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Contraseña</label>
<input class="form-control" placeholder="Min 8 y Max 20 caracteres" name="password" required type="password"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Confirmar contraseña</label>
<input class="form-control" placeholder="Vuelve a escribir" name="confirmpassword" required type="password"> 
</div>
												
</div>
												
<input type="hidden" name="acctype" value="101">
												
												
</div>

</div>

<div class="modal-footer text-center">
<button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Registrar</button>
</div>
										
</div>
</form>