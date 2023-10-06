package com.fssa.politifact.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.politifact.dao.UserDao;
import com.fssa.politifact.exceptions.DaoException;
import com.fssa.politifact.model.User;
import com.fssa.politifact.service.UserService;
import com.fssa.politifact.validator.UserValidator;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService userservice = getUserService();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		String adminMail = "admin@gmail.com";
		String adminPassoword = "Admin@gmail";

		PrintWriter out = response.getWriter();

		User user = new User();
		user.setEmailId(email);
		user.setPassword(password);
		
		HttpSession session = request.getSession(false);


		try {

			if (email.equals(adminMail) && password.equals(adminPassoword)) {

				
				session.setAttribute("adminemail", email);
				
				request.setAttribute("status", true);

				request.getRequestDispatcher("index.jsp").forward(request, response);
			}

			else if (userservice.userLogin(email, password)) {

				session.setAttribute("email", email);
				
				session.setAttribute("status", true);

				request.getRequestDispatcher("index.jsp").forward(request, response);

			} else {
				
				request.setAttribute("errorMessage", "Invalid User name and Password");

				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				
				dispatcher.forward(request, response);
			}

		} catch (DaoException | SQLException e) {

			request.setAttribute("errorMessage", e.getMessage());

			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			
			dispatcher.forward(request, response);

		}

	}

	public static UserService getUserService() {

		UserValidator userValidator = new UserValidator();

		UserDao userDao = UserDao.getObj();

		UserService UserService = new UserService(userValidator, userDao);

		return UserService;
	}

}
