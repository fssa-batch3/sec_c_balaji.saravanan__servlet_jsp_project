package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.AffidavitDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Affidavit;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.validator.AffidavitValidator;

/**
 * Servlet implementation class CreateAffidavit
 */
@WebServlet("/CreateAffidavit")
public class CreateAffidavit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAffidavit() {
        super();
       
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AffidavitService affidavitService= getArtifacService();
		
		int leaderId= Integer.parseInt(request.getParameter("leaderDetail"));
		
		int electionId=Integer.parseInt(request.getParameter("election"));
		
		String url= request.getParameter("affidavit_url");
		
		Affidavit affidavit= new Affidavit(0, 0, null);
		
		affidavit.setElectionId(electionId);
		affidavit.setLeaderId(leaderId);
		affidavit.setAffidateUrl(url);
		
		
		
		try {
			affidavitService.addAffidavit(affidavit);
			
			request.setAttribute("status", "true");
			
		} catch (DaoException | SQLException | LeaderValidateException e) {
			
			request.setAttribute("errorMessage", e.getMessage());
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("CreateLeader.jsp");

		dispatcher.forward(request, response);
	}
	
	public static AffidavitService getArtifacService() {
		AffidavitValidator arrtifactValidator = new AffidavitValidator();
		AffidavitDao affidavitDao= AffidavitDao.getObj();
		AffidavitService affidavitService= new AffidavitService(affidavitDao,arrtifactValidator);
		return affidavitService;
		
	}

}
