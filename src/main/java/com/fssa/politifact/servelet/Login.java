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

		PrintWriter out = response.getWriter();

		User user = new User();
		user.setEmailId(email);
		user.setPassword(password);

		try {

			if (userservice.userLogin(email, password)) {

				HttpSession session = request.getSession(false);
				
				session.setAttribute("email", email);
				session.setAttribute("status", true);

				request.getRequestDispatcher("index.jsp").forward(request, response);

			} else {
				response.sendRedirect(request.getContextPath() + "/register.jsp?error=Login Failded");
			}

		} catch (DaoException | SQLException e) {
			
			response.sendRedirect("/register.jsp?errorMessage=" + e.getMessage());

			RequestDispatcher dispatcher = request.getRequestDispatcher(request.getContextPath() + "/register.jsp");
			dispatcher.forward(request, response);
			 e.printStackTrace();

		}

	}

	public static UserService getUserService() {

		UserValidator userValidator = new UserValidator();

		UserDao userDao = UserDao.getObj();

		UserService UserService = new UserService(userValidator, userDao);

		return UserService;
	}

}
