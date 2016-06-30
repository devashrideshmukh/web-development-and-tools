package com.neu.webTools.hotelPelican.dao;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;

import javax.mail.Message;
import javax.sound.midi.Soundbank;

import org.apache.commons.collections.CollectionUtils;
import org.codemonkey.simplejavamail.Email;
import org.codemonkey.simplejavamail.Mailer;
import org.codemonkey.simplejavamail.TransportStrategy;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.web.multipart.MultipartFile;

import com.neu.webTools.hotelPelican.model.Booking;
import com.neu.webTools.hotelPelican.model.Notification;
import com.neu.webTools.hotelPelican.model.Room;
import com.neu.webTools.hotelPelican.model.Schedule;
import com.neu.webTools.hotelPelican.model.User;
import com.neu.webTools.hotelPelican.security.PasswordSecurity;

public class RoomDao extends DAO {

	public boolean addRoom(Room room) throws Exception {
		boolean flag = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			session.save(room);
			transaction.commit();
			flag = true;
			close();
		} catch (HibernateException e) {
			flag = false;
			System.err.println(e.getMessage());
			throw new Exception("Could not add room");
		}
		return flag;

	}

	public ArrayList<Date> getDatesBetweenRange(Date checkIn, Date checkOut) {
		ArrayList<Date> listOfDates = new ArrayList<Date>();
		listOfDates.add(checkIn);
		Calendar cal = Calendar.getInstance();
		cal.setTime(checkIn);
		while (cal.getTime().before(checkOut)) {
			cal.add(Calendar.DATE, 1);
			listOfDates.add(cal.getTime());
		}
		return listOfDates;

	}

	public ArrayList<Schedule> getScheduleOfOneRoom(int roomId) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		ArrayList<Schedule> scheduleOfOneRoom = new ArrayList<Schedule>();
		Query query = getSession().createQuery(
				"from Schedule where roomId=:roomId");
		query.setInteger("roomId", roomId);
		scheduleOfOneRoom = (ArrayList<Schedule>) query.list();
		close();
		tx.commit();
		return scheduleOfOneRoom;

	}

	public boolean checkIfRoomIsEmpty(ArrayList<Date> rangeOfDates,
			ArrayList<Schedule> schedules) {
		boolean flag = false;
		ArrayList<Date> scheduleDates = new ArrayList<Date>();
		for (int i = 0; i < schedules.size(); i++) {
			scheduleDates.add(schedules.get(i).getDateBooked());
		}
		ArrayList<Date> commonList = new ArrayList<Date>();

		for (Schedule schedule : schedules) {
			for (Date date : rangeOfDates) {
				if (date.equals(schedule.getDateBooked())) {
					commonList.add(date);
					break;
				}
			}
		}
		if (commonList.size() == 0) {

			flag = true;
		}

		return flag;
	}

	public ArrayList<Room> getAvailableRooms(ArrayList<Date> dateList,
			int capacity, String roomType) {
		ArrayList<Room> availableRooms = new ArrayList<Room>();
		ArrayList<Room> allRooms = getRoomsWithCriteria(capacity, roomType);
		for (int i = 0; i < allRooms.size(); i++) {
			Room room = allRooms.get(i);
			if (checkIfRoomIsEmpty(dateList,
					getScheduleOfOneRoom(room.getRoomId()))) {

				availableRooms.add(room);
			}

		}

		return availableRooms;
	}

	public void deleteSelectedRoom(int roomId) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		String hql = "delete from  Room where roomId = :roomId";
		Query query = session.createQuery(hql);
		query.setInteger("roomId", roomId);
		int rowCount = query.executeUpdate();
		tx.commit();

	}

	public void deleteSelectedNotification(int notificationId) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		String hql = "delete from  Notification where notificationId = :notificationId";
		Query query = session.createQuery(hql);
		query.setInteger("notificationId", notificationId);
		int rowCount = query.executeUpdate();
		tx.commit();

	}

	public boolean updateUserLoyalityPoints(User user, int loyalityPoints)
			throws Exception {
		boolean flag = false;
		try {

			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session
					.createQuery("update User set loyaltyPoints = :loyaltyPoints"
							+ " where userId = :userId");

			query.setInteger("loyaltyPoints", loyalityPoints);
			query.setFloat("userId", user.getUserId());
			int count = query.executeUpdate();
			transaction.commit();

			flag = true;
			close();

		} catch (HibernateException e) {
			flag = false;
			throw new Exception("Could not update user");
		}

		return flag;
	}

	public boolean updateRoom(Room room, int id) throws Exception {
		boolean flag = false;
		try {
			System.err.println("IN UPDATE ROOM");

			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session
					.createQuery("update Room set roomType = :roomType,  capacity=:capacity, pricePerDay=:pricePerDay "
							+ " where roomId = :roomId");

			System.err.println("room id" + id);
			query.setInteger("roomId", id);
			query.setString("roomType", room.getRoomType());
			query.setInteger("capacity", room.getCapacity());
			query.setFloat("pricePerDay", room.getPricePerDay());
			int count = query.executeUpdate();
			transaction.commit();

			flag = true;
			close();
		} catch (HibernateException e) {
			flag = false;
			throw new Exception("Could not update room");
		}

		return flag;
	}

	public ArrayList<Room> getRoomsWithCriteria(int capacity, String roomType) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		ArrayList<Room> listOfRooms = new ArrayList<Room>();
		Query query = getSession().createQuery(
				"from Room where roomType=:roomType and capacity >=:capacity");
		query.setString("roomType", roomType);
		query.setInteger("capacity", capacity);
		transaction.commit();
		listOfRooms = (ArrayList<Room>) query.list();

		close();
		return listOfRooms;

	}

	public ArrayList<Room> getRooms() {

		ArrayList<Room> listOfRooms = new ArrayList<Room>();
		Query query = getSession().createQuery("from Room");
		listOfRooms = (ArrayList<Room>) query.list();
		close();
		return listOfRooms;

	}

	public Room searchRoomByID(int roomId) throws Exception {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();

			Query q = session.createQuery("from Room where roomId = :roomId");

			q.setInteger("roomId", roomId);
			Room room = (Room) q.uniqueResult();

			close();
			return room;

		} catch (HibernateException e) {
			throw new Exception("Room Cannot be found");
		}
	}

	public Notification searchNotificationByID(int notificationId)
			throws Exception {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();

			Query q = session
					.createQuery("from Notification where notificationId = :notificationId");

			q.setInteger("notificationId", notificationId);
			Notification notification = (Notification) q.uniqueResult();

			close();
			return notification;

		} catch (HibernateException e) {
			throw new Exception("Notification Cannot be found");
		}
	}

	public void saveDate(Date date) {

		Schedule schedule = new Schedule();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		schedule.setDateBooked(date);
		// schedule.setScheduleId("sch1");
		schedule.setRoomId(14);
		session.save(schedule);
		transaction.commit();
		close();

	}

	public void bookARoom(ArrayList<Date> dateList, int roomId, Booking booking) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		for (int i = 0; i < dateList.size(); i++) {
			Schedule schedule = new Schedule();
			Date date = dateList.get(i);
			schedule.setDateBooked(date);
			schedule.setRoomId(roomId);
			session.save(schedule);

		}

		Notification notification = new Notification();
		notification.setBooking(booking);
		session.save(notification);
		session.save(booking);
		transaction.commit();
		close();

	}

	public ArrayList<Notification> getNotifications() {

		ArrayList<Notification> listOfNotifications = new ArrayList<Notification>();
		Query query = getSession().createQuery("from Notification");
		listOfNotifications = (ArrayList<Notification>) query.list();
		close();
		return listOfNotifications;

	}

	public String upImage(String name, MultipartFile file) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "images");

				// File dir = new File(path + File.separator + "images");
				if (!dir.exists()) {
					dir.mkdirs();
				}

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				return "You successfully uploaded file=" + name;
			} catch (Exception e) {

				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name
					+ " because the file was empty.";
		}

	}

	public void sendMail(User user, String message,Booking booking) {
		
		String name = user.getName();
		Email email = new Email();

		email.setFromAddress("Hotel Pelican", "hotelpelicanboston@gmail.com");
		email.setSubject("Booking Confirmation!");

		email.addRecipient(name,user.getEmailId(), Message.RecipientType.TO);
		StringBuffer sb=new StringBuffer();
		sb.append("Greeting!!");
		sb.append("\n");
		sb.append("Your booking details are as follows.");
		sb.append("\n");
		sb.append("Booking Date:\t"+booking.getBookingDate());
		sb.append("\n");
		sb.append("Check-In Date:\t"+booking.getCheckInDate());
		sb.append("\n");
		sb.append("Check-Out Date:\t"+booking.getCheckOutDate());
		sb.append("\n");
		sb.append("Total Amount:\t"+booking.getTotalAmount());
		sb.append("\n");
		sb.append("Enjoy your stay in Hotel Pelican");
		sb.append("\n");
		sb.append("-Team Hotel Pelican");
		System.out.println("user id"+user.getEmailId());
		email.setText(sb.toString());
		new Mailer("smtp.gmail.com", 465, "hotelpelicanboston@gmail.com", "September0491",
				TransportStrategy.SMTP_SSL).sendMail(email);
		System.out.println("Sent message successfully....");
	}
	
	


}
