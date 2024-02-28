package com.UserServlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.UserDao;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(name, email, password);
			
		   UserDao dao = new UserDao(DBConnect.getCon());
		     boolean f = dao.userRegister(u);
		     HttpSession session = req.getSession();
		     
			if(f) {
				
         session.setAttribute("sucMsg", "Register Successfully");
         resp.sendRedirect("signup.jsp");
				
			}else {
				session.setAttribute("errorMsg","Somthing wrong on server");
				resp.sendRedirect("signup.jsp");
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

	
	
}
