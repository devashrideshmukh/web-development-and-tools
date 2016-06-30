package com.neu.webTools.hotelPelican;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.neu.webTools.hotelPelican.dao.RoomDao;
import com.neu.webTools.hotelPelican.model.Booking;
import com.neu.webTools.hotelPelican.model.Room;
import com.neu.webTools.hotelPelican.model.User;

@Controller
public class RoomController {

	@Autowired
	private RoomDao roomDao;

	@Autowired
	@Qualifier("roomValidator")
	private Validator roomValidator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(roomValidator);
	}

	@RequestMapping(value = "/addRoom", method = RequestMethod.GET)
	public String showAddRoomPages(Locale locale, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			model.addAttribute("room", new Room());
			return "AddRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/addRoomDetails", method = RequestMethod.POST)
	public String addRoomDetails(Locale locale, Model model,
			@ModelAttribute("room") @Validated Room room, BindingResult result,
			HttpServletRequest request) {
		String page = "";

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			if (result.hasErrors()) {
				page = "AddRoom";
			} else {

				try {
					System.out.println("IN ADD");
					boolean flag = roomDao.addRoom(room);
					String msg = roomDao.upImage(room.getImage(),
							room.getFile());
					System.err.println("MESSAGE" + msg);
					if (flag) {
						model.addAttribute("message",
								"Room has been added successfully");
						model.addAttribute("task", "success");
						System.out.println("IN CREATE ROOM");
						model.addAttribute("room", new Room());
						page = "AddRoom";

					} else {
						model.addAttribute("message",
								"Error! Room cannot be added");
						model.addAttribute("task", "failure");
						model.addAttribute("room", new Room());
						page = "AddRoom";

					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

			return page;
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/viewRooms", method = RequestMethod.GET)
	public String viewAllRooms(Locale locale, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			ArrayList<Room> listOfRooms = roomDao.getRooms();
			model.addAttribute("from", "viewRooms");
			model.addAttribute("listOfRooms", listOfRooms);
			return "ViewRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/viewRoomDetails", method = RequestMethod.GET)
	public String viewRoomsDetails(Locale locale, Model model,
			@RequestParam("id") int id, HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {

			Room room = null;
			ArrayList<Room> listOfRooms = null;
			try {
				listOfRooms = roomDao.getRooms();
				room = roomDao.searchRoomByID(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("Room" + room.getRoomType());
			model.addAttribute("listOfRooms", listOfRooms);
			model.addAttribute("room", room);
			model.addAttribute("from", "viewDetails");
			return "ViewRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/updateRoomDetails", method = RequestMethod.GET)
	public String updateRoomDetails(Locale locale, Model model,
			@RequestParam("id") int id, HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			Room room = null;
			try {
				room = roomDao.searchRoomByID(id);
				System.err.println("ROOM" + room.getRoomId());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addAttribute("roomId", id);
			model.addAttribute("room", room);
			return "UpdateRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/deleteRoom", method = RequestMethod.GET)
	public String deleteRoom(Locale locale, Model model,
			@RequestParam("id") int id, HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			roomDao.deleteSelectedRoom(id);
			ArrayList<Room> listOfRooms = roomDao.getRooms();
			model.addAttribute("from", "viewRooms");
			model.addAttribute("listOfRooms", listOfRooms);
			return "ViewRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/updateRoom", method = RequestMethod.GET)
	public String updateRoom(Locale locale, Model model,
			@ModelAttribute("room") Room room, HttpServletRequest request) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			String returnVal = "";
			boolean flag = false;
			try {
				System.err.println("in request" + room.getRoomId());
				flag = roomDao.updateRoom(room, room.getRoomId());
				ArrayList<Room> listOfRooms = roomDao.getRooms();
				model.addAttribute("from", "viewRooms");
				model.addAttribute("listOfRooms", listOfRooms);

			} catch (Exception e) {
				// TODO Auto-generated catch block

				e.printStackTrace();
			}
			if (!flag) {

				returnVal = "UpdateRoom";
			} else {
				returnVal = "ViewRoom";
			}
			return returnVal;
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/searchAvailableRooms", method = RequestMethod.GET)
	public String searchForAvailablRoomsCustomer(Locale locale,
			HttpServletRequest request, Model model,
			@RequestParam("checkIn") String checkIn,
			@RequestParam("checkOut") String checkOut,
			@RequestParam("roomType") String roomType,
			@RequestParam("capacity") int capacity) {

		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {

			System.out.println("Check in Date" + checkIn);
			System.out.println("Check out Date" + checkOut);

			SimpleDateFormat myFormat1 = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat fromUser1 = new SimpleDateFormat("yyyy-MM-dd");
			String reformattedStr1 = "";
			SimpleDateFormat formatter1 = new SimpleDateFormat("MM/dd/yyyy");

			SimpleDateFormat myFormat2 = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat fromUser2 = new SimpleDateFormat("yyyy-MM-dd");
			String reformattedStr2 = "";
			SimpleDateFormat formatter2 = new SimpleDateFormat("MM/dd/yyyy");
			Date currentDate = new Date();
			Date checkInDate = null;
			Date checkOutDate = null;

			try {

				reformattedStr1 = myFormat1.format(fromUser1.parse(checkIn));
				checkInDate = formatter1.parse(reformattedStr1);

				reformattedStr2 = myFormat2.format(fromUser2.parse(checkOut));
				checkOutDate = formatter2.parse(reformattedStr2);

				System.out.println("ci" + checkInDate.getDate());
				System.out.println("co" + checkOutDate.getDate());

			} catch (ParseException e) {
				e.printStackTrace();
			}

			if (checkOutDate.before(checkInDate)) {

				model.addAttribute("message",
						"Check out date cannot be after check in date");
			} else if (checkInDate.before(currentDate)) {
				model.addAttribute("message",
						"Check-In date cannot be before today's date");

			} else if (checkOutDate.before(currentDate)) {
				model.addAttribute("message",
						"Check-Out date cannot be before today's date");

			} else {

				ArrayList<Date> dateList = roomDao.getDatesBetweenRange(
						checkInDate, checkOutDate);
				ArrayList<Room> availableRooms = roomDao.getAvailableRooms(
						dateList, capacity, roomType);

				session.setAttribute("dateList", dateList);
				session.setAttribute("adults", capacity);
				session.setAttribute("checkInDate", checkInDate);
				session.setAttribute("checkOutDate", checkOutDate);
				model.addAttribute("listOfAvailableRooms", availableRooms);
				System.err.println("List of avalaible rooms"
						+ availableRooms.size());
				model.addAttribute("task", "viewAvailableRooms");

			}
			System.out.println(reformattedStr1); // Sat Jan 02 00:00:00 GMT 2010
			return "BookRoom";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/confirmBooking", method = RequestMethod.GET)
	public String confirmBookingProceedToPay(Locale locale, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			model.addAttribute("room", new Room());
			return "Payment";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/bookRoom", method = RequestMethod.GET)
	public String bookRoom(Locale locale, Model model,
			HttpServletRequest request, @RequestParam("id") int roomId) {
		HttpSession session = request.getSession();
		ArrayList<Date> dateList = (ArrayList<Date>) session
				.getAttribute("dateList");

		model.addAttribute("dateList", dateList);

		try {
			Room room = roomDao.searchRoomByID(roomId);
			session.setAttribute("room", room);

			float pricePerDay = room.getPricePerDay();
			float totalAmount = pricePerDay * dateList.size();
			session.setAttribute("totalAmount", totalAmount);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "BookRoomDetails";
	}

	@RequestMapping(value = "/redeemPoints", method = RequestMethod.GET)
	public String redeemPointsFromCustomer(Locale locale, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		int loyalityPoints = user.getLoyaltyPoints();
		float totalAmount = (Float) session.getAttribute("totalAmount");
		float newAmount = totalAmount - (loyalityPoints * 10);
		if (newAmount < 0) {
			newAmount = 0;
		}
		session.setAttribute("totalAmount", newAmount);
		user.setLoyaltyPoints(0);
		try {
			roomDao.updateUserLoyalityPoints(user, 0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("in redeem");
		return "BookRoomDetails";
	}

	@RequestMapping(value = "/paymentConfirmation", method = RequestMethod.GET)
	public String paymentConfirmationMethod(Locale locale, Model model,
			HttpServletRequest request) {
		
		
		
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("customer")) {
			
			User user = (User) session.getAttribute("user");
			Room room = (Room) session.getAttribute("room");
			ArrayList<Date> dateList = (ArrayList<Date>) session
					.getAttribute("dateList");
			Booking booking = new Booking();
			float totalAmount = (Float) session.getAttribute("totalAmount");
			booking.setTotalAmount(totalAmount);
			booking.setRoomId(room.getRoomId());
			booking.setUser(user);
			Date transactionDate = new Date();
			booking.setCheckInDate(dateList.get(0));
			booking.setBookingDate(transactionDate);
			int size = dateList.size();
			booking.setCheckOutDate(dateList.get(size - 1));
			roomDao.sendMail(user, "Your room has been booked successfully",
					booking);
			model.addAttribute("message", "Your room has been booked successfully");
			int points = user.getLoyaltyPoints() + (int) totalAmount / 100;
			user.setLoyaltyPoints(points);
			try {
				System.err.println("in update");
				roomDao.updateUserLoyalityPoints(user, points);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addAttribute("points", (int) totalAmount / 100);
			model.addAttribute("totalPoints", user.getLoyaltyPoints());
			roomDao.bookARoom(dateList, room.getRoomId(), booking);
			System.out.println(user.getName());
			model.addAttribute("email",user.getEmailId());
			return "messageSuccess";

		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}
		
		
	}

}
