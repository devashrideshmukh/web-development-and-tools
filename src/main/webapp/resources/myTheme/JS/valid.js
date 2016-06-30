function validate_nop()
{
 var flag=true;
 var errmsg="";
 var x=document.getElementById("nop").value;
 if(x=="")
 {
   errmsg="*Please enter the No Of Passengers field";
   flag=false;
 }
 else if(isNaN(x))
 {
   errmsg="*Please enter the No Of Passengers in numbers";
   flag=false;
 }
 else if(parseInt(x)<=0)
 {
  errmsg="*Number of passengers should not be negative or zero.";
  flag=false;
 }
 else if(parseInt(x)>20)
 {
	 errmsg="*Please enter the No Of passengers less than 20";
	 flag=false;
 }
 if(errmsg!="")
 {
  document.getElementById("dispNOP").innerHTML=errmsg;
 }
 if(flag)
 {
    document.getElementById("dispNOP").innerHTML="";
 }
}
/*
function isValidDate() 
{
	
	var dateStr=document.getElementById("dot").value;
	
	var date1=document.getElementById("doj").value;
	var datePat = /^(1-9){4}(\-)[(0-9)](1-9)(\-)((0-9)(1-9))$/;
	var matchArray = dateStr.match(datePat); 
	if (matchArray == null)
	{
	alert("Date is not in a valid format.");
	return false;
	}
	if(dateStr<date1)
	{
	errmsg="Please enter end date greater than start date.";
	flag=false;
	}
	month = matchArray[1]; 
	day = matchArray[3];
	year = matchArray[4];
	if (month < 1 || month > 12) 
	{ 
	alert("Month must be between 1 and 12.");
	return false;
	}
	if (day < 1 || day > 31) {
	alert("Day must be between 1 and 31.");
	return false;
	}
	if ((month==4 || month==6 || month==9 || month==11) && day==31) {
	alert("Month "+month+" doesn't have 31 days!");
	return false;
	}
	if (month == 2) 
	{ // check for february 29th
	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
	if (day>29 || (day==29 && !isleap)) 
	{
	alert("February " + year + " doesn't have " + day + " days!");
	return false;
	   }
	}
	return true;  // date is valid
	}

*/