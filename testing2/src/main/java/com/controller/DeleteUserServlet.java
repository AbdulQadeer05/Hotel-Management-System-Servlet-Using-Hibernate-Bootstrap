package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.User;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUser")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("oldname");
		
		 SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
		            .addAnnotatedClass(User.class).buildSessionFactory();
		    Session session = factory.openSession();
		    Transaction transaction = null;

		    try {
		    	
		    	transaction = session.beginTransaction();
		    	
		    	String hql="Delete From User where name =:name"; 
		    	session.createQuery(hql)
		    	.setParameter("name", name)
		    	.executeUpdate();
		    	transaction.commit();
		    	
		    	PrintWriter out = response.getWriter();
		    	out.print("Record Delete Successfully");
		    	
		    }catch(Exception e) {
		    	e.printStackTrace();
		    	PrintWriter out = response.getWriter();
		    	out.print("Error");
		    	
		    }finally {
		    	session.close();
		    	factory.close();
		    }
		
		
		
	}

}
