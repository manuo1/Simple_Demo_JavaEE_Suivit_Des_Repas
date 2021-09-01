package fr.eni.suividesrepas.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.suividesrepas.bll.RepasManager;

/**
 * Servlet implementation class ServletAddMeal
 */
@WebServlet("/addMeal")
public class ServletAddMeal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/addMeal.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocalDate date=null;
		LocalTime time=null;
		String foods=null;
		// get date in form
		date = LocalDate.parse(request.getParameter("date"));
		// get time in form	
		time = LocalTime.parse(request.getParameter("time"));
		// get aliments in form
		foods = request.getParameter("foods");
		// change String food to a list foodList
		List<String> alimentsNameList = Arrays.asList(foods.split(","));
		RepasManager repasManager = new RepasManager();
		repasManager.ajouterRepas(date, time, alimentsNameList);
		RequestDispatcher rd = request.getRequestDispatcher("/mealHistory");
		rd.forward(request, response);

	}

}
