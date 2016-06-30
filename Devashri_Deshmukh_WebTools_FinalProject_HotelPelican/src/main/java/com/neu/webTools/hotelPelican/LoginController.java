package com.neu.webTools.hotelPelican;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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

import com.neu.webTools.hotelPelican.dao.HibernateUtil;
import com.neu.webTools.hotelPelican.dao.UserDao;
import com.neu.webTools.hotelPelican.model.Notification;
import com.neu.webTools.hotelPelican.model.Room;
import com.neu.webTools.hotelPelican.model.User;
import com.neu.webTools.hotelPelican.security.PasswordSecurity;

@Controller
public class LoginController {

	@Autowired
	@Qualifier("userValidator")
	private Validator validator;

	@Autowired
	private UserDao userDao;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submitForm(Model model, User user, BindingResult result,
			HttpServletRequest request, HttpServletResponse response) {
		String returnPage = "";

		User u = null;
		String passwordEncripted;
		try {
			passwordEncripted = PasswordSecurity.encrypt(user.getPassword());
			u = userDao.queryUserByNameAndPassword(user.getUserName(),
					passwordEncripted);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		if (u != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", u);
			if (u.getRole().getRoleId() == 0) {
				ArrayList<Notification> listOfNotifications = userDao
						.getNotifications();
				System.out.println("listOfNotifications"
						+ listOfNotifications.size());
				session.setAttribute("notifications", listOfNotifications);
				session.setMaxInactiveInterval(60);
				session.setAttribute("checkLogIn", "login");
				returnPage = "AdminHome";

			} else {

				returnPage = "CustomerHome";
			}
		} else {
			model.addAttribute("loginFailed",
					"Username and password do not match");
			returnPage = "home";
		}
		return returnPage;

	}

	@RequestMapping(value = "/logout")
	public String logoutUser(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "home";

	}

	@RequestMapping(value = "/viewNotifications")
	public String viewNotifications(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		if (u != null && u.getRole().getRoleName().equals("admin")) {
			return "NotificationsPage";
		} else {

			User user = new User();
			model.addAttribute("user", user);
			return "home";

		}

	}

	@RequestMapping(value = "/signUpAUser", method = RequestMethod.GET)
	public String signUpANewUser(Model model,
			@ModelAttribute("user") @Validated User user, BindingResult result) {
		System.out.println("Here in request map");
		user.setLoyaltyPoints(10);
		String passwordEncripted;
		try {
			passwordEncripted = PasswordSecurity.encrypt(user.getPassword());
			user.setPassword(passwordEncripted);
			String confirmPasswordEncripted = PasswordSecurity.encrypt(user
					.getConfirmPassword());
			user.setConfirmPassword(confirmPasswordEncripted);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String page = "";

		if (result.hasErrors()) {
			page = "SignUpPage";
		}

		else {
			try {
				boolean flag = userDao.addNewUSer(user);
				if (flag) {
					model.addAttribute("message",
							"User has been added successfully");
					model.addAttribute("task", "success");
					model.addAttribute("user", new User());
					page = "SignUpPage";

				} else {
					model.addAttribute(
							"message",
							"This E-mail is registered to another user or this username already exists. Please try again");
					model.addAttribute("task", "failure");
					model.addAttribute("user", new User());
					page = "SignUpPage";

				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return page;

	}

	@RequestMapping(value = "/forgotPasswordUsername", method = RequestMethod.GET)
	public String forgotPasswordUsername(Locale locale, Model model,
			@RequestParam("username") String username,
			HttpServletRequest request) {
		HttpSession session = request.getSession();

		try {
			User user = userDao.queryUserByName(username);
			if (user != null) {
				model.addAttribute("from", "userRetrieved");
				model.addAttribute("securityQuestion",
						user.getCustomerSequrityquestion());
				session.setAttribute("user", user);
				model.addAttribute("message",
						"Please answer your security question");
			} else {
				model.addAttribute("from", "error");
				model.addAttribute("message", "This username does not exist");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "ForgotPassword";
	}

	@RequestMapping(value = "/forgotPasswordAnswer")
	public String forgotPasswordUsernameAnswer(Locale locale, Model model,
			@RequestParam("answer") String answer, HttpServletRequest request) {
		// System.out.println("username"+username);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user.getCustomerAnswer().equals(answer.trim())) {
			model.addAttribute("from", "answerCorrect");
			model.addAttribute("message",
					"Your password has been emailed to you");
			userDao.sendPasswordMail(user);
		} else {

			model.addAttribute("from", "error");
			model.addAttribute("message", "You have entered wrong answer");

		}

		return "ForgotPassword";
	}

}
