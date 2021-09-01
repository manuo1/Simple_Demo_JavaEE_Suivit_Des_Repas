package fr.eni.suividesrepas.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.suividesrepas.bll.RepasManager;
import fr.eni.suividesrepas.bo.Repas;

/**
 * Servlet implementation class ServletMealHistory
 */
@WebServlet("/mealHistory")
public class ServletMealHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		RepasManager repasManager = new RepasManager();
 		List<Repas> listeRepas=null;
 		listeRepas = repasManager.getAllRepas();
 		request.setAttribute("listeRepas", listeRepas);
 		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/mealHistory.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
