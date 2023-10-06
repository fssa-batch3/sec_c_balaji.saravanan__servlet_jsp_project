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
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Register() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String firstName = request.getParameter("first_name");
        String mobileNumber = request.getParameter("mobile_number");
        String email = request.getParameter("regemail");
        String password = request.getParameter("regpassword");
        
        UserService userService= getUserService();
        
        User user = new User();
        
		user.setEmailId(email);
		user.setUserName(firstName);
		user.setPassword(password);
		user.setMobileNo(mobileNumber);
		
        try {
        	
			userService.addUser(user);
			
			request.setAttribute("status", "true");
			
		} catch (DaoException | SQLException | LeaderValidateException e) {
			
			request.setAttribute("errorMessage", e.getMessage());
			
			request.setAttribute("email", email);
			request.setAttribute("userName", firstName);
			request.setAttribute("Password", mobileNumber);
			request.setAttribute("mobileNo",password);
			
			e.printStackTrace();
		}
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");

		dispatcher.forward(request, response);
    }
	
	
	
	

	public static UserService getUserService() {

		UserValidator userValidator = new UserValidator();

		UserDao userDao = UserDao.getObj();

		UserService UserService = new UserService(userValidator,userDao);

		return UserService;
	}

}
