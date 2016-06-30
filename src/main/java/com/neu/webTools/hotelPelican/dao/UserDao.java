package com.neu.webTools.hotelPelican.dao;

import org.codemonkey.simplejavamail.Email;
import org.codemonkey.simplejavamail.Mailer;
import org.codemonkey.simplejavamail.TransportStrategy;
import org.hibernate.Filter;

import java.util.ArrayList;
import java.util.Date;

import javax.mail.Message;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.neu.webTools.hotelPelican.model.Booking;
import com.neu.webTools.hotelPelican.model.Notification;
import com.neu.webTools.hotelPelican.model.Role;
import com.neu.webTools.hotelPelican.model.Room;
import com.neu.webTools.hotelPelican.model.User;
import com.neu.webTools.hotelPelican.security.PasswordSecurity;

public class UserDao extends DAO {

	/*
	 * Since its a query, it is not necessary to wrap code inside the begin
	 * transaction and commit part, unlike update, create, and delete. Since
	 * there is no object in the session yet, nothing will be committed. After
	 * Adding these, "transaction is not successfully started' Exception will be
	 * thrown.
	 */

	public User queryUserByNameAndPassword(String userName, String userPassword)
			throws Exception {
		try {
			// begin();
			Session s = getSession();

			Query q = s
					.createQuery("from User where username = :username and password = :password");
			q.setString("username", userName);
			q.setString("password", userPassword);
			// System.out.println(q);
			User user = (User) q.uniqueResult();
			close();
			// commit();
			return user;
		} catch (HibernateException e) {
			// rollback();
			throw new Exception("Could not get user " + userName, e);
		}
	}
	
	public User queryUserByName(String userName)
			throws Exception {
		try {
			// begin();
			Session s = getSession();

			Query q = s
					.createQuery("from User where username = :username");
			q.setString("username", userName);
			
			User user = (User) q.uniqueResult();
			close();
			
			return user;
		} catch (HibernateException e) {
			
			throw new Exception("Could not get user " + userName, e);
		}
	}

	public boolean addNewUSer(User user) throws Exception {
		boolean flag = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			// to check uniqueness of email-ids
			ArrayList<User> userListEmail = new ArrayList<User>();
			Query query = getSession().createQuery(
					"from User where emailId = :emailId or username=:username");
			query.setString("emailId", user.getEmailId());
			query.setString("username", user.getUsername());
			userListEmail = (ArrayList<User>) query.list();

			Query query1 = getSession().createQuery(
					"from Role where roleId = :roleId");
			query1.setInteger("roleId", 1);

			Role role = (Role) query1.uniqueResult();

			if (userListEmail.size() == 0) {

				user.setRole(role);
				session.save(user);
				flag = true;
				transaction.commit();
			} else {

				flag = false;
			}

			close();
		} catch (HibernateException e) {
			flag = false;
			System.err.println(e.getMessage());
			throw new Exception("Could not add user");
		}
		return flag;

	}

	public ArrayList<Notification> getNotifications() {

		ArrayList<Notification> listOfNotifications = new ArrayList<Notification>();
		Query query = getSession().createQuery("from Notification");
		listOfNotifications = (ArrayList<Notification>) query.list();
		close();
		return listOfNotifications;

	}
	
	public ArrayList<Booking> getBookingHistory(int userId) {

		ArrayList<Booking> listOfBookings = new ArrayList<Booking>();
		Query query = getSession().createQuery("from Booking where userId=:userId");
		query.setParameter("userId", userId);
		listOfBookings = (ArrayList<Booking>) query.list();
		close();
		return listOfBookings;

	}

	public ArrayList<Booking> searchListByType(String type, Date date) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("Date" + date);
		
		// Filter
		//session.enableFilter("byCheckInDate").setParameter("roomId",1);
//		Query query = getSession().createQuery(
//				"from Booking");
		ArrayList<Booking> listOfBooking = null;
		Query query = null;
		
		if (type.equals("checkInDate")) {
			query = getSession().createQuery(
					"from Booking where checkInDate=:date");
		} else if (type.equals("checkOutDate")) {
			query = getSession().createQuery(
					"from Booking where checkOutDate=:date");
		}else{
			
			query = getSession().createQuery(
					"from Booking where bookingDate=:date");
		}

		query.setParameter("date", date);

		listOfBooking = (ArrayList<Booking>) query.list();
		transaction.commit();
		session.close();
		return listOfBooking;

	}
	
public void sendPasswordMail(User user){
		
		String name = user.getName();
		Email email = new Email();
		PasswordSecurity ps=new PasswordSecurity();
		email.setFromAddress("Hotel Pelican", "hotelpelicanboston@gmail.com");
		email.setSubject("Forgotten Password");

		email.addRecipient(name,user.getEmailId(), Message.RecipientType.TO);
		StringBuffer sb=new StringBuffer();
		sb.append("Greeting!!");
		sb.append("\n");
		sb.append("Your Password is");
		
		try {
			sb.append(ps.decrypt(user.getPassword()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sb.append("\n");
		sb.append("-Team Hotel Pelican");
		System.out.println("user id"+user.getEmailId());
		email.setText(sb.toString());
		new Mailer("smtp.gmail.com", 465, "hotelpelicanboston@gmail.com", "September0491",
				TransportStrategy.SMTP_SSL).sendMail(email);
		System.out.println("Sent message successfully....");
	}

}
