function abc()
{
	document.getElementById('radioError').innerHTML=' ';
	
	document.getElementById('statError').innerHTML=' ';
	
	
	return true;
}



function confirmDelete1()
{
	 
	  if (validateReason())
	  {
		   var agree = confirm("Are you sure to deactivate this customer details ?");
		   if(agree)
		   {
			   return true;
		   }
		   else
			   return false;
	  }
	   
	    return false;

}

function xyz()
{
	document.getElementById('rsnError').innerHTML=' ';
	return true;
}





function validateUpdateForm()
{
	if(validateRadio() && validateStatus())
		return true;
	else
		return false;
}




function validateRadio()
{
	var radios = document.getElementsByName("ptype");
	var found = 0;

	for (var i = 0; i < radios.length; i++) 
	{       
		if (radios[i].checked) 
		{
			found = 1;
			break;
		}
	}

	if(found == 0)
	{
		document.getElementById("radioError").innerHTML= "Please select a payment type.";
		return false;

	}   
	else
	{
		document.getElementById("radioError").innerHTML= "";	
		return true;	
	}
}


function validateStatus()
{
	var stat=document.getElementById("status").value;
	if(stat.length==0||!isNaN(stat))
	{
		document.getElementById("statError").innerHTML= "  Please enter a status.";
			return false;
	}
	else
	{
		document.getElementById("statError").innerHTML= "";	
		return true;	
	}
}




function validateReason()
{
	
	var rsn = document.getElementById("reason").value;
	
	if(rsn.length==0||rsn==null||rsn=="")
	{
		document.getElementById("rsnError").innerHTML= "  Please enter a reason for deactivation.";
			return false;
	}
	else
		if(rsn.charAt(0)==' ')
		{
			document.getElementById("rsnError").innerHTML= "  Please enter a valid reason for deactivation.";
			return false;
			
		}
	
	else
	{
		document.getElementById("rsnError").innerHTML= "";	
		return true;	
	}
}

function confirmDelete()
{
   
  if (validateReason())
  {
	   var agree = confirm("Are you sure to deactivate this connection details ?");
	   if(agree)
	   {
		   return true;
	   }
	   else
		   return false;
  }
   
    return false;

}



/*function confirmActivate()
{
	
	
var agree = confirm("Are you sure to activate this connection details ?");

var flag = false;

if ( agree==true )
{
	flag =  true ;
	
}
else
{
	return flag;
}

return flag;
}

*/

/*function validateTariff()
{
	var tf=document.getElementById("ti").value;
	if(tf.length==0)
	{
		document.getElementById("trfError").innerHTML= "  Please enter a tariff name.";
			return false;
	}
	else
	{
		document.getElementById("trfError").innerHTML= "";	
		return true;	
	}
}*/

