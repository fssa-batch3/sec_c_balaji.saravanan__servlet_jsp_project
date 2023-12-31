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
import com.fssa.politifact.enums.ElectionTypes;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.validator.AffidavitValidator;

/**
 * Servlet implementation class AddTrail1
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Profile() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			int id= Integer.parseInt(request.getParameter("partyId"));
			
			int electionId= Integer.parseInt(request.getParameter("election"));
			
		    AffidavitService affidavitService= getAffidavitService();
		    
			List<Leader> leaderValues = affidavitService.readSpecificLeaderPartyId(id,electionId);


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
	

}
