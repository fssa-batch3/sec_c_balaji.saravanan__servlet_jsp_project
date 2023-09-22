package com.fssa.politifact.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.fssa.politifact.dao.AffidavitDao;
import com.fssa.politifact.dao.PartyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.model.Party;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.service.PartyService;
import com.fssa.politifact.validator.AffidavitValidator;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int election = Integer.parseInt(request.getParameter("election"));

		try {

			PartyService partyService = getPartyService();

			AffidavitService affidavitService = getAffidavitService();

			List<Leader> leaderValues = affidavitService.readLeaderwithElection(election);
			
			List<String> uniquePartyNames = new ArrayList<>();

			for (Leader leader : leaderValues) {

				String partyName = leader.getPartyName();

				uniquePartyNames.add(partyName);

			}
			
			Set<String> uniqueConstituencyName = new HashSet<>();

			for (Leader leader : leaderValues) {

				String constituencyName = leader.getCounstuencyName();

				uniqueConstituencyName.add(constituencyName);

			}

			List<Party> partyList = partyService.partyList();

			List<Party> filteredPartyList = new ArrayList<>();

			for (Party party : partyList) {

				if (uniquePartyNames.contains(party.getPartyName())) {

					filteredPartyList.add(party);
				}
			}

			request.setAttribute("PartyList", filteredPartyList);

			request.setAttribute("LeaderList", leaderValues);
			
			request.setAttribute("ConstituencyList", uniqueConstituencyName);

			request.setAttribute("election", election);
			

		} catch (SQLException | DaoException e) {

			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("partyList.jsp");

		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public static PartyService getPartyService() {

		PartyValidator partyValidator = new PartyValidator();

		PartyDao paryDao = PartyDao.getObj();

		PartyService partyService = new PartyService(partyValidator, paryDao);

		return partyService;

	}

	public static AffidavitService getAffidavitService() {

		AffidavitValidator affidavitvalidator = new AffidavitValidator();

		AffidavitDao affidavitDao = AffidavitDao.getObj();

		AffidavitService affidavitService = new AffidavitService(affidavitDao, affidavitvalidator);

		return affidavitService;

	}

}
