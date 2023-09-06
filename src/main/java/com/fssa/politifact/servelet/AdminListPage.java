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
import com.fssa.politifact.dao.ConstituencyDao;
import com.fssa.politifact.dao.ElectionDao;
import com.fssa.politifact.dao.LeaderDao;
import com.fssa.politifact.dao.PartyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Affidavit;
import com.fssa.politifact.model.Constituency;
import com.fssa.politifact.model.Election;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.model.Party;
import com.fssa.politifact.service.AffidavitService;
import com.fssa.politifact.service.ConstituencyService;
import com.fssa.politifact.service.ElectionService;
import com.fssa.politifact.service.LeaderService;
import com.fssa.politifact.service.PartyService;
import com.fssa.politifact.validator.AffidavitValidator;
import com.fssa.politifact.validator.ConstituencyValidator;
import com.fssa.politifact.validator.ElectionValidator;
import com.fssa.politifact.validator.LeaderValidator;
import com.fssa.politifact.validator.PartyValidator;

/**
 * Servlet implementation class adminListPage
 */
@WebServlet("/AdminListPage")
public class AdminListPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminListPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			List<Party> partyNames = getPartyService().partyList();

			List<Constituency> constituencyList = getConstituencyService().constuencyList();

			List<Leader> leaderList = getLeaderService().callAllLeader();

			List<Election> electionList = getElectionService().electionList();

			List<Affidavit> affidavitList = getAffidavitService().readAll();

			request.setAttribute("LeaderList", leaderList);

			request.setAttribute("electionList", electionList);

			request.setAttribute("partyNames", partyNames);

			request.setAttribute("constituencyList", constituencyList);

			request.setAttribute("AffidavitList", affidavitList);

			

		} catch (SQLException | LeaderValidateException | DaoException e) {
            request.setAttribute("errorMessage", e.getMessage());
			e.printStackTrace();

		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminPageCreateList.jsp");

		dispatcher.forward(request, response);
	}

	public static PartyService getPartyService() {
		PartyValidator partyvalidate = new PartyValidator();
		PartyDao partDao = PartyDao.getObj();
		PartyService partyService = new PartyService(partyvalidate, partDao);
		return partyService;

	}

	public static ConstituencyService getConstituencyService() {
		ConstituencyValidator constituencyValidate = new ConstituencyValidator();
		ConstituencyDao constituencyDao = ConstituencyDao.getObj();
		ConstituencyService constituencyService = new ConstituencyService(constituencyValidate, constituencyDao);
		return constituencyService;

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

	public static AffidavitService getAffidavitService() {
		AffidavitValidator affidavitValidator = new AffidavitValidator();
		AffidavitDao affidavitDAo = AffidavitDao.getObj();
		AffidavitService affidavitService = new AffidavitService(affidavitDAo, affidavitValidator);
		return affidavitService;
	}

}
