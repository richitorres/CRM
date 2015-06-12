<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>CRM</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<style type="text/css">
	.row-centered
	{
		border:2px solid #1772fc;
		border-radius: 10px;
		margin-top: 10px;
		background: #eee;
	}
	.form-group
	{
		margin-top: 30px;
	}
	</style>
</head>
<body>
	<div class="container" style="margin-top:100px;">
		<div class="row-centered col-md-4 col-md-offset-4">
            <?php echo validation_errors(); ?>
            <?php echo form_open('verifylogin'); ?>
			<form class="form" method="post">
				<div class="form-group">
					<label for="">Inicia Sesión</label><span class="glyphicon glyphicon-user"></span>
				</div>
				<div class="form-group">
					
					<input type="text" name="username" class="form-control"placeholder="Usuario"required>
				</div>
				<div class="form-group">
				
					<input type="password" name="password" class="form-control"placeholder="Contraseña"required>
				</div>
				<div class="form-group col-md-offset-9">
					<button type="submit" class="btn btn-primary" name="btn_login">Vamos!</button>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>