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

import com.fssa.politifact.dao.ConstituencyDao;
import com.fssa.politifact.dao.ElectionDao;
import com.fssa.politifact.dao.LeaderDao;
import com.fssa.politifact.dao.PartyDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.Constituency;
import com.fssa.politifact.model.Election;
import com.fssa.politifact.model.Leader;
import com.fssa.politifact.model.Party;
import com.fssa.politifact.service.ConstituencyService;
import com.fssa.politifact.service.ElectionService;
import com.fssa.politifact.service.LeaderService;
import com.fssa.politifact.service.PartyService;
import com.fssa.politifact.validator.ConstituencyValidator;
import com.fssa.politifact.validator.ElectionValidator;
import com.fssa.politifact.validator.LeaderValidator;
import com.fssa.politifact.validator.PartyValidator;

/**
 * Servlet implementation class UpdateLeader
 */
@WebServlet("/UpdateLeader")
public class UpdateLeader extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateLeader() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			List<Party> partyNames = getPartyService().partyList();

			List<Constituency> constituencyList = getConstituencyService().constuencyList();

			List<Leader> leaderList = getLeaderService().callAllLeader();
			
			List<Election> electionList= getElectionService().electionList();
			
			System.out.println(leaderList);

			request.setAttribute("LeaderList", leaderList);
			
			request.setAttribute("electionList", electionList);

			request.setAttribute("partyNames", partyNames);

			request.setAttribute("constituencyList", constituencyList);

			RequestDispatcher dispatcher = request.getRequestDispatcher("adminPageCreateList.jsp");
			
			dispatcher.forward(request, response);
		} catch (SQLException | LeaderValidateException | DaoException e) {

			e.printStackTrace();

		}
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LeaderService leaderService = Profile.getService();
		
        int id = Integer.parseInt(request.getParameter("id"));
        
		String name = request.getParameter("name");
		String position = request.getParameter("position");
		String partyName = request.getParameter("partyName");
		double experience = Double.parseDouble(request.getParameter("experience"));
		String occupation = request.getParameter("occupation");
		String constituiencyName = request.getParameter("counstuencyName");
		String imageUrl = request.getParameter("image_url");
		String birth = request.getParameter("descriptionOfBirth");
		String education = request.getParameter("descriptionOfEducation");
		String workingExperience = request.getParameter("descriptionOfPastWorkExperience");
		String politics = request.getParameter("descritionOfpolitics");
		String family = request.getParameter("descriptionOffamily");
		String income = request.getParameter("descriptionOfIncome");

		Leader leader = new Leader();
		leader.setName(name);
		leader.setPosition(position);
		leader.setPartyName(partyName);
		leader.setExperience(experience);
		leader.setOccupation(occupation);
		leader.setCounstuencyName(constituiencyName);
		leader.setImageUrl(imageUrl);
		leader.setCounstuencyName(constituiencyName);
		leader.setDescriptionOfBirth(birth);
		leader.setDescriptionOfEducation(education);
		leader.setDescriptionOfPastWorkExperience(workingExperience);
		leader.setDescritionOfpolitics(politics);
		leader.setDescriptionOffamily(family);
		leader.setDescriptionOfIncome(income);

		try {
			

			leaderService.upDateLeader(leader, id);

		} catch (LeaderValidateException e) {

			

		} catch (DaoException e) {

			
		} catch (SQLException e) {
			
			
		}

		
	}

}
