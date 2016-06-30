package com.neu.webTools.hotelPelican;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neu.webTools.hotelPelican.dao.RoomDao;
import com.neu.webTools.hotelPelican.model.Notification;
import com.neu.webTools.hotelPelican.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpServletRequest request) {

		HttpSession session = request.getSession();
		
		return "home";
	}
	


	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homeBack(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		
		return "home";
	}

	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public String aboutUs(Locale locale, Model model,HttpServletRequest request) {
		//return "AboutUs";
		String context=request.getContextPath();
		model.addAttribute("context",context);
		return "AboutUsHome";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String newUserSignUp(Locale locale, Model model) {
		model.addAttribute("user", new User());
		return "SignUpPage";
	}

	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contacUs(Locale locale, Model model) {
		return "ContactUs";
	}

	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help(Locale locale, Model model) {
		return "Help";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		return "messageSuccess";
	}

	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String forgotPassword(Locale locale, Model model) {
		return "ForgotPassword";
	}
	

	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String gallery(Locale locale, Model model) {
		return "Gallery";
	}

	@RequestMapping(value = "/rewards", method = RequestMethod.GET)
	public String rewards(Locale locale, Model model) {
		return "Rewards";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error(Locale locale, Model model) {
		return "Error";
	}

	@RequestMapping(value = "/viewBookingCustomerDetails", method = RequestMethod.GET)
	public String viewBookingDetailsCustomer(Locale locale, Model model,
			@RequestParam("id") int id, HttpServletRequest request) {
		
		
		
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {

			RoomDao dao = new RoomDao();
			
			Notification notification = null;
			Notification deletedNotification = new Notification();
			ArrayList<Notification> listOfNotifications = null;
			try {
				notification = dao.searchNotificationByID(id);
				deletedNotification.setBooking(notification.getBooking());
				deletedNotification.setNotificationId(notification
						.getNotificationId());
				dao.deleteSelectedNotification(id);
				listOfNotifications = dao.getNotifications();

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			model.addAttribute("notify", deletedNotification);
			if (listOfNotifications.size() > 0) {
				model.addAttribute("task", "fromView");
			}
			session.setAttribute("notifications", listOfNotifications);
			return "NotificationsPage";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}
		
		
		
		
		
		
		
		
		
	}

}
