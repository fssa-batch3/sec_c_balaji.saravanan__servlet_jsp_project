package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.AffidavitDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.validator.AffidavitValidator;

/**
 * Servlet implementation class FilterLeader
 */
@WebServlet("/FilterLeader")
public class FilterLeader extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FilterLeader() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			String constituency = (String) request.getParameter("constituency");
			System.out.println(constituency);
			int id = Integer.parseInt(request.getParameter("party"));

			int electionId = Integer.parseInt(request.getParameter("election"));

			AffidavitService affidavitService = getAffidavitService();

			int constituencyId = affidavitService.readConstituencyId(constituency);
			
			
				List<Leader> leaderValues = affidavitService.readSpecificLeaderPartyId(id, electionId, constituencyId);

				request.setAttribute("leaderValues", leaderValues);

				RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");

				dispatcher.forward(request, response);

			

		} catch (SQLException | DaoException e) {

			request.setAttribute("ErrorMessage", e.getMessage());

			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");

			dispatcher.forward(request, response);

		}
	}

	public static AffidavitService getAffidavitService() {
		AffidavitValidator affidavitvalidator = new AffidavitValidator();
		AffidavitDao affidavitDao = AffidavitDao.getObj();
		AffidavitService affidavitService = new AffidavitService(affidavitDao, affidavitvalidator);
		return affidavitService;

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
