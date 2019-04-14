package com.cognizant.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.cognizant.bean.UserBean;
import com.cognizant.dao.UserDao;


/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uid = request.getParameter("uid");
		String pass = request.getParameter("pass");
		
		UserBean userBean = new UserBean();
	
		userBean.setUiD(uid);
		userBean.setPasS(pass);
		
		UserDao userDao = new UserDao();
		
		String formResult = userDao.checkDetails(userBean);
		
		if(formResult.equals("SUCCESS")){
			request.getRequestDispatcher("/user.jsp?id="+uid).forward(request, response);
		}
		else{
			request.getRequestDispatcher("/error.jsp?id="+uid).forward(request, response);
		}
		
	}

}
