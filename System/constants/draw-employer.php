<form name="frm" action="app/create-account.php" method="POST" autocomplete="off">
<div class="login-box-wrapper">
							
<div class="modal-header">
<h4 class="modal-title text-center">Crea tu cuenta gratis</h4>
</div>

<div class="modal-body">
																
<div class="row gap-20">
											

												

												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Nombre de Empresa</label>
<input class="form-control" placeholder="Ingresa tu Nombre de Empresa" name="company" required type="text"> 
</div>
												
</div>

<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Rubro de la Empresa</label>
<input class="form-control" placeholder="Ejm: Ventas/Viajes, Software de PC's etc" name="type" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Correo Electrónico</label>
<input class="form-control" placeholder="Ingresa tu Correo Electrónico" name="email" required type="text"> 
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
<input class="form-control" placeholder="Repite tu contraseña" name="confirmpassword" required type="password"> 
</div>
												
</div>
												
<input type="hidden" name="acctype" value="102">
												
												
</div>

</div>

<div class="modal-footer text-center">
<button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Registrar</button>
</div>
										
</div>
</form>