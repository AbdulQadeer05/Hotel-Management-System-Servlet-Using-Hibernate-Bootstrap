package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/Registration")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserServlet() {
        super();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println("GET method is not supported directly. Use POST.");
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
	
		User user=new User(name,email,password);
		System.out.print("Hellow1");
		
		Transaction transaction=null;
			
		try (Session session = hibernate.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            
            session.persist(user);
            
            System.out.print("hellow2");
            transaction.commit();

            PrintWriter out = response.getWriter();
            out.print("<h1>Record added successfully</h1>");
        } catch (Exception e) {
            e.printStackTrace();
        }
		
	}

}
