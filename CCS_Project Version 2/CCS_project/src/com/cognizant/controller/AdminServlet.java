package com.cognizant.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.bean.AdminBean;
import com.cognizant.dao.AdminDao;


/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String id = request.getParameter("uid");
		String pass = request.getParameter("pass");
		
		AdminBean adminBean = new AdminBean();
		
		adminBean.setIdS(id);
		adminBean.setPasS(pass);
		
		AdminDao adminDao = new AdminDao();
		
		String formResult = adminDao.checkDetails(adminBean);
		
		if(formResult.equals("SUCCESS")){
			request.getRequestDispatcher("/admin.jsp?id="+id).forward(request, response);
		}
		else{
			request.getRequestDispatcher("/error.jsp?id="+id).forward(request, response);
		}
		
	}

}
