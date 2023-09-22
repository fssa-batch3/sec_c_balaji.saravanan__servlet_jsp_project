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
 * Servlet implementation class UpdateConstituency
 */
@WebServlet("/UpdateConstituency")
public class UpdateConstituency extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateConstituency() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int constituencyId = Integer.parseInt(request.getParameter("constituencyId"));

		String constituencyName = request.getParameter("constituencyName");
		
		String districtName = request.getParameter("districtName");
		
		int constituencyNumber = Integer.parseInt(request.getParameter("constituencyNumber"));

		int electionId = Integer.parseInt(request.getParameter("election1"));
		
		Constituency constituency= new Constituency(constituencyName, districtName, constituencyNumber, electionId);
		
		ConstituencyService constituencyService= getConstituencyService();


		try {
			
			constituencyService.upDateConstituency(constituency, constituencyId);
			
			request.setAttribute("status", "true");

		} catch (LeaderValidateException | SQLException | DaoException e) {

			request.setAttribute("errorMessage", e.getMessage());

			e.printStackTrace();
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminListPage");

		dispatcher.forward(request, response);

	}
	
	public static ConstituencyService getConstituencyService() {
		ConstituencyValidator constituencyValidate = new ConstituencyValidator();
		ConstituencyDao constituencyDao = ConstituencyDao.getObj();
		ConstituencyService constituencyService = new ConstituencyService(constituencyValidate, constituencyDao);
		return constituencyService;

	}

}
