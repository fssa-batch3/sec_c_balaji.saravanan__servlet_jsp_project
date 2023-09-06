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
 * Servlet implementation class UpdateAffidavit
 */
@WebServlet("/UpdateAffidavit")
public class UpdateAffidavit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateAffidavit() {
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
		int affidavitId = Integer.parseInt(request.getParameter("affidavitId"));

		int leaderId = Integer.parseInt(request.getParameter("leaderDetail"));

		int electionId = Integer.parseInt(request.getParameter("election"));

		String affidavitUrl = request.getParameter("affidavit_url");

		AffidavitService affidavitService = getArtifacService();

		Affidavit affidavit = new Affidavit(electionId, leaderId, affidavitUrl);

		try {

			affidavitService.upDateAffidavit(affidavit, affidavitId);

		} catch (LeaderValidateException | SQLException | DaoException e) {

			request.setAttribute("errorMessage", e.getMessage());

			e.printStackTrace();
		}

		page.doGet(request, response);

	}

	public static AffidavitService getArtifacService() {
		AffidavitValidator arrtifactValidator = new AffidavitValidator();
		AffidavitDao affidavitDao = AffidavitDao.getObj();
		AffidavitService affidavitService = new AffidavitService(affidavitDao, arrtifactValidator);
		return affidavitService;

	}
}
