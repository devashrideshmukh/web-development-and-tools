package com.neu.webTools.hotelPelican;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neu.webTools.hotelPelican.dao.RoomDao;
import com.neu.webTools.hotelPelican.dao.UserDao;
import com.neu.webTools.hotelPelican.model.Booking;
import com.neu.webTools.hotelPelican.model.User;

@Controller
public class AdminController {

	@RequestMapping(value = "/adminAboutUs", method = RequestMethod.GET)
	public String aboutUs(Locale locale, Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			return "adminAboutUs";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}
	}

	@RequestMapping(value = "/adminHome", method = RequestMethod.GET)
	public String aboutHome(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")){
			
			return "AdminHome";
			
		}else{
			User user = new User();
			model.addAttribute("user", user);
			return "home";
			
		}
		
	}

	
	@RequestMapping(value = "/adminContactUs", method = RequestMethod.GET)
	public String aboutContactUs(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")){
			
			return "adminContactUs";
			
		}else{
			User user = new User();
			model.addAttribute("user", user);
			return "home";
			
		}
	}
	
	@RequestMapping(value = "/adminGallery", method = RequestMethod.GET)
	public String aboutGallery(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")){
			
			return "AdminGallery";
			
		}else{
			User user = new User();
			model.addAttribute("user", user);
			return "home";
			
		}
	}
	
	@RequestMapping(value = "/adminRewards", method = RequestMethod.GET)
	public String adminRewards(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")){
			
			return "AdminRewards";
			
		}else{
			User user = new User();
			model.addAttribute("user", user);
			return "home";
			
		}
	}

	@RequestMapping(value = "/searchBookingsByDate")
	public String searchRoomBookingsByDate(Locale locale, Model model,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")){
		
		
		UserDao ud = new UserDao();
		String type = request.getParameter("type");
		String dateOfSearch = request.getParameter("dateOfSearch");
		System.err.println("type" + type);
		System.err.println("dateOfSearch" + dateOfSearch);
		SimpleDateFormat myFormat1 = new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat fromUser1 = new SimpleDateFormat("yyyy-MM-dd");
		String reformattedStr1 = "";
		Date date = null;
		SimpleDateFormat formatter1 = new SimpleDateFormat("MM/dd/yyyy");
		try {
			reformattedStr1 = myFormat1.format(fromUser1.parse(dateOfSearch));
			date = formatter1.parse(reformattedStr1);
			ArrayList<Booking> bookingList = ud.searchListByType(type, date);

			model.addAttribute("bookingList", bookingList);
			System.out.println(bookingList);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "ViewRoomBookingSearchPage";
		}else{
			
			User user = new User();
			model.addAttribute("user", user);
			return "home";
			
		}
		
		
		
		
		
		
	}

	
	@RequestMapping(value = "/viewRoomBookings", method = RequestMethod.GET)
	public String viewRoomBookings(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")){
			
			return "ViewRoomBookingSearchPage";
			
		}else{
			User user = new User();
			model.addAttribute("user", user);
			return "home";
			
		}
	}

}
