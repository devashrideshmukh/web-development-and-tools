function validate_loyalty()
{
 var flag=true;
 var errmsg="";
 var x=document.getElementById("loyalty").value;
 if(x=="")
 {
   errmsg="*Please fill the loyalty field";
   flag=false;
 }
 else if(isNaN(x))
 {
   errmsg="*Please enter the loyalty points<br> in numbers";
   flag=false;
 }
 else if(parseInt(x)<0)
 {
  errmsg="*Please  enter positive value.";
  flag=false;
 }
 
 if(errmsg!="")
 {
  document.getElementById("loyaltyDisplay").innerHTML=errmsg;
 }
 if(flag)
 {
    document.getElementById("loyaltyDisplay").innerHTML="";
 }
 return flag;
} 
function validate_cusId()
{

	/*var id =  document.getElementById("cusid").value;
	var pattern =  /^(cust)_([0-9])$/;
	
	if(id=="")
		{
		document.getElementById("cusIdDisplay").innerHTML="Please enter the customer Id";
		return false;
		}
	else if(!pattern.test(id))
		{
		document.getElementById("cusIdDisplay").innerHTML="Please enter the valid customer Id(for eg cust_1)";
		return false;
		}
	else
		{
		document.getElementById("cusIdDisplay").innerHTML="";
		return true;
		}*/
	var status = document.getElementById("cusid").selectedIndex;
	if(status==0)
	{
	document.getElementById("cusIdDisplay").innerHTML="Please select customer Id";
	return false;
	}
else
	{
	document.getElementById("cusIdDisplay").innerHTML="";
	return true;
	}
}

function validate_packageName()
{
	var status = document.getElementById("status").selectedIndex;
	if(status==0)
	{
	document.getElementById("packageDisplay").innerHTML="Please select package name";
	return false;
	}
else
	{
	document.getElementById("packageDisplay").innerHTML="";
	return true;
	}
}

function validate_spot()
{
	var status = document.getElementById("spot").selectedIndex;
	if(status==0)
	{
	document.getElementById("spotDisplay").innerHTML="Please select Tourist spot";
	return false;
	}
else
	{
	document.getElementById("spotDisplay").innerHTML="";
	return true;
	}
}
/*function validate_packageId()
{
	
	var status = document.getElementById("packageid").value;
	//alert(status);
	if(status=="00000")
	{
		//alert("inside if");
	document.getElementById("packageDisplay").innerHTML="Please select package Id";
	return false;
	}
else
	{
	document.getElementById("packageDisplay").innerHTML="";
	return true;
	}
}*/
function validate_achievedBy()
{
	var status = document.getElementById("achievedby").value;
	if(status=="00000")
	{
	document.getElementById("achievedByDisplay").innerHTML="Please select achievedBy";
	return false;
	}
else
	{
	document.getElementById("achievedByDisplay").innerHTML="";
	return true;
	}
}
function validateAll_offline()
{
	if(validate_cusId() && validate_packageName()&& validate_spot() && validate_achievedBy() )
    {
	  return true;
      
	}
    else
	{
	  return false;
	}
	
}
function goBack()
{
     window.history.go(-1);	
}

function validate_select()
{
	var status = document.getElementById("searchcriteria").value;
	if(status=="00000")
	{
	document.getElementById("searchcriteria").innerHTML="Please select achievedBy";
	return false;
	}
else
	{
	document.getElementById("searchcriteria").innerHTML="";
	return true;
	}	
}
function validate_search()
{
	var flag=true;
	var x=document.getElementById("search").value;
	var y=document.getElementById("searchcriteria").value;
	if(x=="")
		{
		document.getElementById("errMsg").innerHTML="*Please enter search string.";
		flag=false;
		}
	if(y=="0")
		{
		document.getElementById("errMsg").innerHTML="*Please select search criteria.";
		flag=false;
		}
	return flag;
}

function validate_Allloyalty()
{
	if(validate_loyalty())
    {
	  return true;
      
	}
    else
	{
	  return false;
	}
	
}
function validate_off()
{
	if(validate_achievedBy())
    {
	  return true;
      
	}
    else
	{
	  return false;
	}
	
}
function validate_Allloyalty()
{
	if(validate_loyalty())
    {
	  return true;
      
	}
    else
	{
	  return false;
	}
	
}
