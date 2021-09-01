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

    <title>Ajout d'un repas</title>
  </head>
  <body>
  <!-- Main Part -->
  
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<div class="card border-primary text-center my-3">
				  <div class="card-header fs-3">-- Ajouter un repas --</div>
				  <div class="card-body text-primary">
					
					<form method="post" action="addMeal">
						<div class="mb-3">
						  <label for="FormControlInput1" class="form-label">Date</label>
						  <input type="date" class="form-control" name="date" required>
						</div>
						<div class="mb-3">
						  <label for="FormControlInput2" class="form-label">Heure</label>
						  <input type="time" class="form-control" name="time" required>
						</div>
						<div class="mb-3">
						  <label for="FormControlTextarea1" class="form-label">Aliments du Repas</label>
						  <textarea class="form-control" name="foods" rows="3" required placeholder="Veuillez séparer les aliments par des virgules"></textarea>
						  <div class="form-text">( Veuillez séparer les aliments par des virgules )</div>
						</div>
						<div class="btn-group d-flex mt-2" role="group" aria-label="endsbuttons">
						<button type="submit" class="btn btn-primary mt-2">Enregistrer</button>
						<a class="btn btn-danger mt-2" href="index" role="button">Annuler</a>
						</div>
					</form> 
				  </div>
				</div>
			</div>
		</div>
	</div>
  
     <!-- JavaScript (Bootstrap Bundle with Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 </body>
</html>
