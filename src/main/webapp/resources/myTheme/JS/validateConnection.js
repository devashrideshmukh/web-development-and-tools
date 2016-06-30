function abc()
{
	
	document.getElementById('idError').innerHTML=' ';
	document.getElementById('errormsg').innerHTML=' ';
	return true;
}









function validateId()
{
	
	var cid=document.getElementById("cid").value;
	if(cid==""||cid==null)
	{
		document.getElementById("idError").innerHTML= "  Please enter the Connection Number.";
			return false;
	}
	else
		if(isNaN(cid))
			{
				document.getElementById("idError").innerHTML= " Please enter valid Connection Number.";
					return false;
			}
	else
	{
		document.getElementById("idError").innerHTML= "";	
		return true;	
	}
}


function validateCId()
{
	
	var cid=document.getElementById("cid").value;
	if(cid==""||cid==null)
	{
		document.getElementById("idError").innerHTML= "  Please enter the customer Id."
			return false;
	}
	else
		if(isNaN(cid))
			{
				document.getElementById("idError").innerHTML= "  Customer Id must contain only numbers.";
					return false;
			}
	else
	{
		document.getElementById("idError").innerHTML= "";	
		return true;	
	}
}