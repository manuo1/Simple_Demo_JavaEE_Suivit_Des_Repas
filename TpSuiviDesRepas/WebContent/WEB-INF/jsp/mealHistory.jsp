<%@page import="fr.eni.suividesrepas.bo.Aliment"%>
<%@page import="fr.eni.suividesrepas.bo.Repas"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%List<Repas> listeRepas = (List<Repas>) request.getAttribute("listeRepas");%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Historique des repas</title>
  </head>
  <body>
  <!-- Main Part -->
  
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<div class="card border-primary text-center my-3">
				  <div class="card-header fs-3">-- Historique des repas --</div>
				  
				  <!-- Accordion -->
					<div class="accordion accordion-flush" id="accordionFlushMealHistory">
					<%for(Repas repas : listeRepas){%>
					
					  <div class="accordion-item">
					    <h2 class="accordion-header" id="flush-headingOne">
					      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse<%=repas.getId()%>" aria-expanded="false" aria-controls="flush-collapse<%=repas.getId()%>">
					        <%=repas.getDate()%> <%=repas.getHeure()%>
					      </button>
					    </h2>
					    <div id="flush-collapse<%=repas.getId()%>" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushMealHistory">
					      <div class="accordion-body">
							<%for(Aliment aliment:repas.getListeAliments()){%>
							<%=aliment.getNom()%>
							<br>
							<%}%>
							
					      </div>
					    </div>
					  </div>
					  <%}%>
					  
					</div>

				  <!-- End of Accordion -->
				  <div class="card-body text-primary">
				  <div class="btn-group d-flex mt-2" role="group" aria-label="endsbuttons">
				  <a class="btn btn-success" href="addMeal" role="button">Ajouter un nouveau repas</a>
				  <a class="btn btn-primary" href="index" role="button">Acceuil</a>
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
