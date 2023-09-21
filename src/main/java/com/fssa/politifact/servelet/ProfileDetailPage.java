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
import com.fssa.politifact.dao.ElectionDao;
import com.fssa.politifact.dao.LeaderDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Affidavit;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.service.ElectionService;
import com.fssa.politifact.service.LeaderService;
import com.fssa.politifact.validator.AffidavitValidator;
import com.fssa.politifact.validator.ElectionValidator;
import com.fssa.politifact.validator.LeaderValidator;

/**
 * Servlet implementation class ProfileDetailPage
 */
@WebServlet("/ProfileDetailPage")
public class ProfileDetailPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileDetailPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AffidavitService affidavitService= getAffidavitService();
		
		LeaderService leaderService= getLeaderService();
		
		
		int id= Integer.parseInt(request.getParameter("id"));
		
		
			try {
				
				List<Affidavit> affidavitList = affidavitService.readSpecificLeader(id);
				
				List<Leader> leaderVlue= leaderService.readSpecifc(id);
				
				request.setAttribute("AffidavitUrl", affidavitList);
				
				request.setAttribute("LeaderDitail", leaderVlue);
				
			} catch (DaoException | SQLException e) {
				
				request.setAttribute("errorMessage", e.getMessage());
				
				e.printStackTrace();
			} catch (LeaderValidateException e) {
				
				request.setAttribute("errorMessage", e.getMessage());
				
				e.printStackTrace();
			}
			
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("profileDetail.jsp");

			dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public static AffidavitService getAffidavitService() {
		AffidavitValidator affidavitvalidator = new AffidavitValidator();
		AffidavitDao affidavitDao = AffidavitDao.getObj();
		AffidavitService affidavitService = new AffidavitService(affidavitDao, affidavitvalidator);
		return affidavitService;

	}
	
	public static LeaderService getLeaderService() {
		LeaderValidator leaderValidate = new LeaderValidator();
		LeaderDao leaderDao = LeaderDao.getObj();
		LeaderService leaderService = new LeaderService(leaderValidate, leaderDao);
		return leaderService;

	}

	public static ElectionService getElectionService() {
		ElectionValidator electionValidator = new ElectionValidator();
		ElectionDao electionDao = ElectionDao.getObj();
		ElectionService electiocService = new ElectionService(electionValidator, electionDao);
		return electiocService;

	}

}
