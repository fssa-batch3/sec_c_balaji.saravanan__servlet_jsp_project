package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.PartyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Party;
import com.fssa.politifact.service.PartyService;
import com.fssa.politifact.validator.PartyValidator;

/**
 * Servlet implementation class CreateParty
 */
@WebServlet("/CreateParty")
public class CreateParty extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateParty() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PartyService partyService = getPartyService();

		String partyName = request.getParameter("partyName");
		String partyImage = request.getParameter("party_image");

		Party party = new Party(partyName, partyImage);

		try {
			partyService.addParty(party);
			
			request.setAttribute("status", "true");

		} catch (DaoException | SQLException | LeaderValidateException e) {
			
			request.setAttribute("partyName5", partyName);
			request.setAttribute("party_image5",partyImage);

			request.setAttribute("errorMessage", e.getMessage());
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("LeaderValues");

		dispatcher.forward(request, response);
	}

	public static PartyService getPartyService() {
		PartyValidator partyvalidate = new PartyValidator();
		PartyDao partDao = PartyDao.getObj();
		PartyService partyService = new PartyService(partyvalidate, partDao);
		return partyService;

	}

}
