package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.model.User;

/**
 * Servlet implementation class AllUser
 */
@WebServlet("/AllUser")
public class AllUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Session session = hibernate.getSessionFactory().openSession();
	        List<User> userList = session.createQuery("from User", User.class).list();
	        session.close();

	        request.setAttribute("users", userList);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("GetAllUser.jsp");
	        dispatcher.forward(request, response);
	        

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

}
