package com.fssa.politifact.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.politifact.dao.AffidavitDao;
import com.fssa.politifact.dao.PartyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.service.PartyService;
import com.fssa.politifact.validator.AffidavitValidator;
import com.fssa.politifact.validator.PartyValidator;

/**
 * Servlet implementation class SearchLeader
 */
@WebServlet("/SearchLeader")
public class SearchLeader extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchLeader() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			AffidavitService affidavitService = getAffidavitService();

			List<Leader> leaderValues = affidavitService.readAllLeaderSearch();

			JSONArray accountsJSonArray = new JSONArray(leaderValues);
			PrintWriter out = response.getWriter();
			out.println(accountsJSonArray.toString());
			out.flush();

		} catch (SQLException | DaoException e) {

			e.printStackTrace();
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	public static AffidavitService getAffidavitService() {

		AffidavitValidator affidavitvalidator = new AffidavitValidator();

		AffidavitDao affidavitDao = AffidavitDao.getObj();

		AffidavitService affidavitService = new AffidavitService(affidavitDao, affidavitvalidator);

		return affidavitService;

	}

}
