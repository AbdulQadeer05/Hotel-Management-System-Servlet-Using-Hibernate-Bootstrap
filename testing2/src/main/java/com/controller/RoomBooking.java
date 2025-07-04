package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

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
	
	
		int roomId = Integer.parseInt(request.getParameter("roomId"));
		int userId = Integer.parseInt(request.getParameter("userId"));
		LocalDate issueDate = LocalDate.parse(request.getParameter("issueDate"));
		LocalDate returnDate = LocalDate.parse(request.getParameter("returnDate"));

		Transaction transaction = null;

		try (Session session = hibernate.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();

			// 🔍 STEP 1: Check if room is already booked in given date range
			String hql = "FROM BookingRoom b WHERE b.room.id = :roomId AND " +
			             "((:issueDate BETWEEN b.issue_date AND b.return_date) OR " +
			             "(:returnDate BETWEEN b.issue_date AND b.return_date) OR " +
			             "(b.issue_date BETWEEN :issueDate AND :returnDate))";

			Query<BookingRoom> query = session.createQuery(hql, BookingRoom.class);
			query.setParameter("roomId", roomId);
			query.setParameter("issueDate", issueDate);
			query.setParameter("returnDate", returnDate);
			List<BookingRoom> existingBookings = query.getResultList();

			if (!existingBookings.isEmpty()) {
				// ❌ Room is already booked in this range
				PrintWriter out = response.getWriter();
				out.println("<h3 style='color:red;'>Room is already booked for selected dates!</h3>");
				return;
			}

			// ✅ Room is available → Book it
			Room room = session.get(Room.class, roomId);
			User user = session.get(User.class, userId);

			BookingRoom br = new BookingRoom(user, room, issueDate, returnDate);
			session.save(br);
			transaction.commit();

			PrintWriter out = response.getWriter();
			out.println("<h3 style='color:green;'>Room Booked Successfully!</h3>");

		} catch (Exception e) {
			e.printStackTrace();
			PrintWriter out = response.getWriter();
			out.println("<h3 style='color:red;'>Something went wrong while booking!</h3>");
		}
	}
		
	
	}


