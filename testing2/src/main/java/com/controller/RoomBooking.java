package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.BookingRoom;
import com.model.Room;
import com.model.User;

/**
 * Servlet implementation class RoomBooking
 */
@WebServlet("/RoomBooking")
public class RoomBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomId=Integer.parseInt((request.getParameter("roomId")));
		int userId=Integer.parseInt((request.getParameter("userId")));
		LocalDate issueDate= LocalDate.parse(request.getParameter("issueDate"));
		LocalDate returnDate=LocalDate.parse(request.getParameter("returnDate"));
		
		Transaction transaction=null;
			    
			    try(Session session= hibernate.getSessionFactory().openSession()) {
			    	transaction = session.beginTransaction();
			    	
			    	Room room = session.get(Room.class,roomId);
			    	User user = session.get(User.class,userId);
			    	
			    	BookingRoom br=new BookingRoom();
			    	br.setUser(user);
			    	br.setRoom(room);
			    	br.setIssue_date(issueDate);
			    	br.setReturn_date(returnDate);
			    	
			    	session.save(br);
			    	transaction.commit();
			    	
			    	
			    	PrintWriter out = response.getWriter();
			    	out.print("Record Save Successfully");
			    	
			    }catch(Exception e) {
			    	e.printStackTrace();
			    	
			    	PrintWriter out = response.getWriter();
			    	out.print("Error");
			    }
		
	}

}
