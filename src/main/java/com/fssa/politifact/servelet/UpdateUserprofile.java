package com.fssa.politifact.servelet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.politifact.dao.UserDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.exceptions.LeaderValidateException;
import com.fssa.politifact.model.User;
import com.fssa.politifact.service.UserService;
import com.fssa.politifact.validator.UserValidator;

/**
 * Servlet implementation class UpdateUserprofile
 */
@WebServlet("/UpdateUserprofile")
public class UpdateUserprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserprofile() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form parameters
		String firstName = request.getParameter("user_name");

		System.out.println(firstName);

		String mobileNumber = request.getParameter("mobile_number");
		String email = request.getParameter("regemail");
		String password = request.getParameter("regpassword");
		String occupation = request.getParameter("occupation");
		int age = Integer.parseInt(request.getParameter("user_age"));
		String gender = request.getParameter("gender");

		UserValidator userValidator = new UserValidator();
		UserDao userDao = UserDao.getObj();

		UserService userService = new UserService(userValidator, userDao);

		User user = new User();

		user.setEmailId(email);
		user.setUserName(firstName);
		user.setPassword(password);
		user.setMobileNo(mobileNumber);
		user.setAge(age);
		user.setOccupation(occupation);
		user.setGender(gender);

		try {

			userService.updateUser(user);

			request.setAttribute("status", "true");

		} catch (DaoException | SQLException | LeaderValidateException e) {
			request.setAttribute("errorMessage", e.getMessage());

			request.setAttribute("email", email);
			request.setAttribute("userName", firstName);
			request.setAttribute("mobileNo", mobileNumber);
			request.setAttribute("Password", password);
			request.setAttribute("occupation", occupation);
			request.setAttribute("age", age);
			request.setAttribute("gender", gender);

			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("UserProfile");

		dispatcher.forward(request, response);
	}

//	
//
//	public static UserService getUserService() {
//
//
//
//
//		return UserService;
//	}

}
