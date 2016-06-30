// JavaScript Document

	$(function() {
	$( "#dob" ).datepicker({
	changeMonth: true,
	changeYear: true,
	dateFormat:"mm-dd-yy",
	maxDate:"+0M +0D -18Y"
	});
	});
	