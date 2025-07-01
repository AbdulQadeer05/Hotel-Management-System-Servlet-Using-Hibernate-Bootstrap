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
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUser")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String oldName = request.getParameter("oldName");
	    String newName = request.getParameter("newName");

	    SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
	            .addAnnotatedClass(User.class).buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction transaction = null;

	    try {
	        transaction = session.beginTransaction();

	        String hql = "UPDATE User SET name = :newName WHERE name = :oldName";
	        int result = session.createQuery(hql)
	                .setParameter("newName", newName)
	                .setParameter("oldName", oldName)
	                .executeUpdate();

	        transaction.commit();

	        PrintWriter out = response.getWriter();
	        if (result > 0) {
	            out.print("<h1>Record updated successfully</h1>");
	        } else {
	            out.print("<h1>No matching record found</h1>");
	        }
	    } catch (Exception e) {
	        if (transaction != null) transaction.rollback();
	        e.printStackTrace();
	        PrintWriter out = response.getWriter();
	        out.print("<h1>Sorry! An error occurred.</h1>");
	    } finally {
	        session.close();
	        factory.close();
	    }
	}

}
