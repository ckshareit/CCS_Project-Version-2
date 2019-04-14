package com.cognizant.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.bean.FormBean;
import com.cognizant.dao.FormDao;


/**
 * Servlet implementation class FormServlet
 */
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String contact = request.getParameter("contact");
		String uid = request.getParameter("uid");
		String pass = request.getParameter("pass");
		
		FormBean formBean = new FormBean();
		formBean.setFnamE(fname);
		formBean.setLnamE(lname);
		formBean.setAgE(age);
		formBean.setGendeR(gender);
		formBean.setContacT(contact);
		formBean.setUiD(uid);
		formBean.setPasS(pass);
		
		FormDao formDao = new FormDao();
		
		String formResult = formDao.checkDetails(formBean);
		
		if(formResult.equals("SUCCESS")){
			request.getRequestDispatcher("/statustrue.jsp?id="+uid).forward(request, response);
		}
		else{
			request.getRequestDispatcher("/statusfalse.jsp?id="+uid).forward(request, response);
		}
		
	}

}
