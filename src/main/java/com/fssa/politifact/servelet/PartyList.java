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

import com.fssa.politifact.dao.PartyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Party;
import com.fssa.politifact.service.PartyService;
import com.fssa.politifact.validator.PartyValidator;

/**
 * Servlet implementation class PartyList
 */
@WebServlet("/PartyList")
public class PartyList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartyList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		try {
			PartyService partyService= getPartyService();
			
			List<Party> partyList=partyService.partyList();
			
			request.setAttribute("PartyList", partyList);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("partyList.jsp");
			
			dispatcher.forward(request, response);
			
			
		} catch (SQLException | DaoException e) {
			
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	public static PartyService getPartyService(){
		
		PartyValidator partyValidator= new PartyValidator();
		PartyDao paryDao= PartyDao.getObj();
		PartyService partyService= new PartyService(partyValidator,paryDao);
		
		return partyService;
		
	}

}
