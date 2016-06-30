package com.neu.webTools.hotelPelican.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.neu.webTools.hotelPelican.model.Room;

public class RoomValidator implements Validator {

	String pricePattern = "[0-9]+([,.][0-9]{1,2})?";
		//	^[0-9]*(\\.)?[0-9]{0,2}$
	private Pattern pattern;
	private Matcher matcher;

	@Override
	public boolean supports(Class<?> clazz) {
		return Room.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Room room = (Room) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pricePerDay",
				"field.required", "Price per day is required");
		if (!errors.hasFieldErrors("price")) {
			if (room.getPricePerDay() == 0 || room.getPricePerDay() < 0)
				errors.rejectValue("pricePerDay", "not_zero",
						"Price should be greater than zero");
		}

//		pattern = Pattern.compile(pricePattern);
//		matcher = pattern.matcher(String.valueOf(room.getPricePerDay()));
//		if (!matcher.matches()) {
//			errors.rejectValue("pricePerDay", "pricePerDay.incorrect",
//					"Price cannot be in alphabets");
//
//		}
//		
//		if (!String.valueOf(room.getPricePerDay()).matches("[0-9]+[.]")) {
//			
//			errors.rejectValue("pricePerDay", "pricePerDay.incorrect",
//					"Price cannot be in alphabets");
//		}

	}

}
