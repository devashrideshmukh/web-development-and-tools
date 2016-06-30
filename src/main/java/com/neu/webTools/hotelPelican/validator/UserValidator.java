package com.neu.webTools.hotelPelican.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.neu.webTools.hotelPelican.model.User;

public class UserValidator implements Validator {

	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	String MOBILE_PATTERN = "[0-9]{10}";
	String POSTAL_CODE_PATTERN = "[0-9]{5}";
	private Pattern pattern;
	private Matcher matcher;

	@Override
	public boolean supports(Class<?> clazz) {

		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		User user = (User) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username",
				"validate.name", "Username required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
				"validate.password", "Password required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword",
				"validate.confirmPassword",
				"Confirm Password required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customerAnswer",
				"validate.customerAnswer", "Answer required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber",
				"validate.phoneNumber",
				"Phone Number field cannot be left blank");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailId",
				"validate.emailID", "Email Id required");
		ValidationUtils.rejectIfEmpty(errors, "name",
				"validate.name", "Name required");
		

		if (!(user.getEmailId() != null && user.getEmailId().isEmpty())) {
			pattern = Pattern.compile(EMAIL_PATTERN);
			matcher = pattern.matcher(user.getEmailId());
			if (!matcher.matches()) {
				errors.rejectValue("emailId", "email.incorrect",
						"Enter a valid email");
			}
		}
		
		if (!(user.getPostalCode() != null)){
			pattern = Pattern.compile(POSTAL_CODE_PATTERN);
			matcher = pattern.matcher(String.valueOf(user.getPostalCode()));
			if (!matcher.matches()) {
				errors.rejectValue("postalCode", "postalCode.incorrect",
						"Enter a correct postal code");
			}
		}

		if (!(user.getPhoneNumber() != null && user.getPhoneNumber().isEmpty())) {
			pattern = Pattern.compile(MOBILE_PATTERN);
			matcher = pattern.matcher(user.getPhoneNumber());
			if (!matcher.matches()) {
				errors.rejectValue("phoneNumber", "phone.incorrect",
						"Enter a correct phone number");
			}
		}

		if (!user.getConfirmPassword().equals(user.getPassword())) {

			errors.rejectValue("confirmPassword", "passwordsDoNotMatch",

			"Passwords do not match");
		}

	}

}
