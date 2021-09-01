<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Suivi des repas</title>
  </head>
  <body>
  <!-- Main Part -->
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<div class="card border-primary text-center my-3">
				  <div class="card-header fs-3">-- Suivi des repas --</div>
				  <div class="card-body text-primary">
				  	<div class="row">
					    <div class="col-6"><a href="addMeal" class="btn btn-primary btn-lg btn-block">Ajouter un Repas</a></div>
					    <div class="col-6"><a href="mealHistory" class="btn btn-success btn-lg btn-block">Historique des repas</a></div>
				  	</div>
				  </div>
			  </div>
			</div>
		</div>
	</div>

    <!-- JavaScript (Bootstrap Bundle with Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 </body>
</html>
