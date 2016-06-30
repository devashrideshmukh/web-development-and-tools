package com.neu.webTools.hotelPelican;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.webTools.hotelPelican.dao.UserDao;
import com.neu.webTools.hotelPelican.model.Booking;
import com.neu.webTools.hotelPelican.model.User;

@Controller
public class CustomerController {

	@RequestMapping(value = "/customerAboutUs", method = RequestMethod.GET)
	public String aboutUsCustomer(Locale locale, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			return "customerAboutUs";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/customerContactUs", method = RequestMethod.GET)
	public String aboutContactUsCustomer(Locale locale, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			return "customerContactUs";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/customerGallery", method = RequestMethod.GET)
	public String aboutGalleryCustomer(Locale locale, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			return "customerGallery";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/customerRewards", method = RequestMethod.GET)
	public String adminRewardsCustomer(Locale locale, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			return "customerGallery";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/customerHome", method = RequestMethod.GET)
	public String adminHomeCustomer(Locale locale, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			return "CustomerHome";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/bookRooms", method = RequestMethod.GET)
	public String bookRoomsAndSuitesCustomer(Locale locale, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			return "BookRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/viewLoyalityPoints", method = RequestMethod.GET)
	public String viewPoints(Locale locale, Model model,
			HttpServletRequest request) {
		System.err.println("In view loyality points");
		
		
		
		
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {

			User user = (User) session.getAttribute("user");
			System.err.println(user.getEmailId());
			model.addAttribute("points", user.getLoyaltyPoints());
			int points = user.getLoyaltyPoints();
			float discount = points * 10;
			model.addAttribute("discount", discount);
			return "ViewPoints";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}
		
	}

	@RequestMapping(value = "/bookingHistory", method = RequestMethod.GET)
	public String viewBookingHistory(Locale locale, Model model,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			User user = (User) session.getAttribute("user");
			UserDao ud = new UserDao();
			ArrayList<Booking> bookingHistory = ud.getBookingHistory(user
					.getUserId());
			session.setAttribute("bookingHistory", bookingHistory);
			return "CustomerBookingHistory";
			
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}
		
		

	}

}
