package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;

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
 * Servlet implementation class UpadateParty
 */
@WebServlet("/UpadateParty")
public class UpadateParty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpadateParty() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	AdminListPage page = new AdminListPage();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("PartyId"));

		String partyName = request.getParameter("partyName");
		
		System.err.println(partyName);
		
		String partyImage = request.getParameter("party_image");
		
		Party party= new Party(partyName,partyImage);
		
		PartyService partyService =  getPartyService();
		
		try {

			partyService.upDateParty(party, id);
			
			request.setAttribute("status", "true");

		} catch (LeaderValidateException | SQLException | DaoException e) {

			request.setAttribute("errorMessage", e.getMessage());

			e.printStackTrace();
		}

		page.doGet(request, response);

	}

	
	public static PartyService getPartyService() {
		PartyValidator partyvalidate = new PartyValidator();
		PartyDao partDao = PartyDao.getObj();
		PartyService partyService = new PartyService(partyvalidate, partDao);
		return partyService;

	}

}
