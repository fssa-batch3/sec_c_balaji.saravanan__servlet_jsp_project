package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.LeaderDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.service.LeaderService;
import com.fssa.politifact.validator.LeaderValidator;

/**
 * Servlet implementation class Verify
 */
@WebServlet("/Verify")
public class Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Verify() {
        super();
        // TODO Auto-generated constructor stub
    }

    AdminListPage page = new AdminListPage();
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String status= request.getParameter("status");
		int id= Integer.parseInt(request.getParameter("id"));
		
		LeaderService leaderService= getLeaderService();
		
		try {
			
			leaderService.updateVeerify(status, id);
			
			request.setAttribute("staus", "true");
			
		} catch (LeaderValidateException | DaoException | SQLException e) {
			
			request.setAttribute("errorMessage", e.getMessage());
			
		}
		
		page.doGet(request, response);
		
			
	}
	
	
	
	public static LeaderService getLeaderService() {
		LeaderValidator leaderValidate = new LeaderValidator();
		LeaderDao leaderDao = LeaderDao.getObj();
		LeaderService leaderService = new LeaderService(leaderValidate, leaderDao);
		return leaderService;
		
	}

}
