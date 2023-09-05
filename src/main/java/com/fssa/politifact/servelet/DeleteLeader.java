package com.fssa.politifact.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.LeaderDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.service.LeaderService;
import com.fssa.politifact.util.Logger;
import com.fssa.politifact.validator.LeaderValidator;

/**
 * Servlet implementation class DeleteLeader
 */
@WebServlet("/DeleteLeader")

public class DeleteLeader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteLeader() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LeaderService leaderService= getLeaderService();
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		
		try {
			
			leaderService.deleteLeader(Integer.parseInt(id));
			
			response.sendRedirect("UpdateLeader");
			
		} catch (LeaderValidateException | SQLException | DaoException e) {
			
			request.setAttribute("errorMessage", e.getMessage());
		}
	}
	
	
	public static LeaderService getLeaderService() {
		LeaderValidator leaderValidate = new LeaderValidator();
		LeaderDao leaderDao = LeaderDao.getObj();
		LeaderService leaderService = new LeaderService(leaderValidate, leaderDao);
		return leaderService;
	}

}
