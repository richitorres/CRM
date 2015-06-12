<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>CRM</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<style type="text/css">
		li:active{
			border: 2px solid #2196F3;
		}
	</style>
	
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
 				<a href="" class="navbar-brand">CRM: AlertDeal</a>

 			</div>
 			<ul class="nav navbar-nav nav-tabs">
			  <li role="presentation"><a href="#">Usuarios 
			  	<span class="glyphicon glyphicon-user"></span></a></li>
			  <li role="presentation"><a href="#">Promociones 
			  	<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			  <li role="presentation"><a href="#">Establecimientos 
			  	<span class="glyphicon glyphicon-globe"></span></a></li>
			  <li role="presentation"><a href="#">Reportes 
			  	<span class="glyphicon glyphicon-stats"></span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right nav-tabs">
			  <li role="presentation"><a href="#"><span class="glyphicon glyphicon-user"></span><?php echo "Bienvenido ".$username."!"?></a></li>
			  <li role="presentation"><a href="#">Cerrar Sesión <span class="glyphicon glyphicon-off"></span>
			  </a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		
	