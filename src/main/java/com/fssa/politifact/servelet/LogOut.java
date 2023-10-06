package com.fssa.politifact.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogOut")
public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false); // Pass false to avoid creating a new session if none exists

		if (session != null) {
			session.removeAttribute("loggedInEmail");
			session.removeAttribute("adminLoggedInEmail");
			session.invalidate();
		}

		response.sendRedirect("index.jsp");
	}
}
