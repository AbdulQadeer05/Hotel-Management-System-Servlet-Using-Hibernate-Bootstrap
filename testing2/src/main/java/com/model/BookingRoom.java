package com.model;
import java.time.LocalDate;

import javax.persistence.*;

@Entity
public class BookingRoom {
	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		@ManyToOne
		private User user;
		@ManyToOne
		private Room room;
		private LocalDate issue_date;
		private LocalDate return_date;
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Room getRoom() {
			return room;
		}
		public void setRoom(Room room) {
			this.room = room;
		}
		public LocalDate getIssue_date() {
			return issue_date;
		}
		public void setIssue_date(LocalDate issue_date) {
			this.issue_date = issue_date;
		}
		public LocalDate getReturn_date() {
			return return_date;
		}
		public void setReturn_date(LocalDate return_date) {
			this.return_date = return_date;
		}
		public BookingRoom(User user, Room room, LocalDate issue_date, LocalDate return_date) {
			super();
			this.user = user;
			this.room = room;
			this.issue_date = issue_date;
			this.return_date = return_date;
		}
		public BookingRoom() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		
}
