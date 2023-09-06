package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.ConstituencyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Constituency;
import com.fssa.politifact.service.ConstituencyService;
import com.fssa.politifact.validator.ConstituencyValidator;

/**
 * Servlet implementation class CreateConstituency
 */
@WebServlet("/CreateConstituency")
public class CreateConstituency extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateConstituency() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ConstituencyService constituencyService = getConstituencyService();

		String constituencyName = request.getParameter("constituencyName");
		String districtName = request.getParameter("districtName");
		int constituencyNumber = Integer.parseInt(request.getParameter("constituencyNumber"));
		int electionType = Integer.parseInt(request.getParameter("election1"));

		Constituency constituency = new Constituency(constituencyName, districtName, constituencyNumber, electionType);

		try {
			
			constituencyService.addConstituency(constituency);
			
			request.setAttribute("status", "true");

		} catch (DaoException | SQLException | LeaderValidateException e) {

			request.setAttribute("errorMessage", e.getMessage());
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("CreateLeader.jsp");

		dispatcher.forward(request, response);
	}

	// Redirect to another page or do any other processing

	public static ConstituencyService getConstituencyService() {
		ConstituencyValidator constituencyValidate = new ConstituencyValidator();
		ConstituencyDao constituencyDao = ConstituencyDao.getObj();
		ConstituencyService constituencyService = new ConstituencyService(constituencyValidate, constituencyDao);
		return constituencyService;

	}

}
