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

import com.model.Room;
/**
 * Servlet implementation class AddRoomServlet
 */
@WebServlet("/addRoom")
public class AddRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public AddRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomName=request.getParameter("roomName");
		int roomNo=Integer.parseInt((request.getParameter("roomNo")));
		
		Room room=new Room (roomName, roomNo);
		
		Transaction transaction=null;
		
		try(Session session = hibernate.getSessionFactory().openSession()) {
			transaction=session.beginTransaction();
			
			session.persist(room);
			transaction.commit();
			
			PrintWriter out = response.getWriter();
            out.print("<h1>Record added successfully</h1>");
			
		}catch(Exception e) {
			e.printStackTrace();
			
			PrintWriter out = response.getWriter();
            out.print("<h1>Error</h1>");
		}
		
		
	}

}
