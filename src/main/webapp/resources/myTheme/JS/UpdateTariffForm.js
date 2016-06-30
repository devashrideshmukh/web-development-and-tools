/*function abc()
{
	
	document.getElementById('statusError').innerHTML=' ';
	
	
	return true;
}*/
function abc()
{
	
	
	document.getElementById('tdescError').innerHTML=' ';
	document.getElementById('mrentError').innerHTML=' ';
	document.getElementById('lrateError').innerHTML=' ';
	document.getElementById('srateError').innerHTML=' ';
	document.getElementById('irateError').innerHTML=' ';
	
	/*document.getElementById('4').innerHTML=' ';
	document.getElementById('5').innerHTML=' ';
	document.getElementById('6').innerHTML=' ';*/
	return true;
}



function confirmDelete()
{
var agree = confirm("Are you sure you want to deactivate the tariff plan ?");

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


function confirmDelete1()
{
var agree = confirm("Are you sure you want to activate the tariff plan?");

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
function confirmUpdate()
{
var agree = confirm("Are you sure you want to update the tariff plan ?");

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



function validateUpdateTariff()
{
	if(validatetdesc() && validatemrental() && validatelrate() && validatesrate() && validateirate() && validatestatus())
		return true;
	else
		return false;
}


function validatetdesc()
{
	var tdesc=document.getElementById("tdesc").value;
	if(tdesc.length==0 || !isNaN(tdesc))
	{
		document.getElementById("tdescError").innerHTML= "  Please enter the valid Tariff Description. "
			return false;
	}
	else
	{
		document.getElementById("tdescError").innerHTML= "";	
		return true;	
	}
}


function validatemrental()
{
	var mrent=document.getElementById("mrent").value;

	if(mrent.length==0||isNaN(mrent)||mrent<0||mrent==0)
	{
		document.getElementById("mrentError").innerHTML= "  Please enter a valid Monthly Rental."
			return false;
	}
	else
	{
		document.getElementById("mrentError").innerHTML= "";	
		return true;	
	}
}



function validatelrate()
{
	var lrate=document.getElementById("lrate").value;

	if(lrate.length==0||isNaN(lrate)||lrate<0||lrate==0)
	{
		document.getElementById("lrateError").innerHTML= "  Please enter a valid Local Pulse Rate."
			return false;
	}
	else
	{
		document.getElementById("lrateError").innerHTML= "";	
		return true;	
	}
}


function validatesrate()
{
	var srate=document.getElementById("srate").value;

	if(srate.length==0||isNaN(srate)||srate<0||srate==0)
	{
		document.getElementById("srateError").innerHTML= "  Please enter a valid STD Pulse Rate."
			return false;
	}
	else
	{
		document.getElementById("srateError").innerHTML= "";	
		return true;	
	}
}


function validateirate()
{
	var irate=document.getElementById("irate").value;

	if(irate.length==0||isNaN(irate)||irate<0||irate==0)
	{
		document.getElementById("irateError").innerHTML= "  Please enter a valid ISD Pulse Rate."
			return false;
	}
	else
	{
		document.getElementById("irateError").innerHTML= "";	
		return true;	
	}
}


function validatestatus()
{
	var status=document.getElementById("status").value;
	if(status=="select")
	{
		document.getElementById("statusError").innerHTML= "  Please select a valid Status."
			return false;
	}
	else
	{
		document.getElementById("statusError").innerHTML= "";	
		return true;	
	}
}


