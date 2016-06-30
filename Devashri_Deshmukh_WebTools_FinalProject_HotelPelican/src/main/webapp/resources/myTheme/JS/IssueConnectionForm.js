function abc()
{
	
	document.getElementById('idError').innerHTML=' ';
	document.getElementById('radioError').innerHTML=' ';
	document.getElementById('tariffError').innerHTML=' ';
	document.getElementById('errormsg').innerHTML=' ';
	
	return true;
}


function validateIssueForm()
{
	if(validateId() && validateRadio() && validateTariff())
		return true;
	else
		return false;
}

function validateId()
{
	var id=document.getElementById("cid").value;

	
	if(id.length==0)
	{
		document.getElementById("idError").innerHTML= "  Please enter a Customer ID."
			return false;
	}
	else if(id.charAt(0)!='1')
	{
		document.getElementById("idError").innerHTML= "  Please enter a valid Customer ID."
			return false;
	
	}
	
	else
	{
		document.getElementById("idError").innerHTML= "";	
		return true;	
	}
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
		document.getElementById("radioError").innerHTML= "  Please select a payment type."
		return false;

	}   
	else
	{
		document.getElementById("radioError").innerHTML= "";	
		return true;	
	}
}

function validateTariff()
{
	var tf=document.getElementById("tariffplan").value;
	if(tf=="select")
	{
		document.getElementById("tariffError").innerHTML= "  Please select a Tariff Plan."
			return false;
	}
	else
	{
		document.getElementById("tariffError").innerHTML= "";	
		return true;	
	}
}