function abc()
{
	
	//document.getElementById("checkError").innerHTML=' ';
	document.getElementById("checkError1").innerHTML=' ';	
	
	return true;
}




function confirmdeacAllTariff()
{
var agree = confirm("Are you sure you want to deactivate all the selected Tariff Plans ?");

var flag = false;

if ( agree==true )
{
	flag =  true ;
}


return flag;
}


function validateRadio()
{
	
	var radios = document.getElementsByName("case");
	

	
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
		document.getElementById("checkError").innerHTML= "  Please select a Tariff Plan to deactivate."
		return false;

	}   
	else
	{
		document.getElementById("checkError").innerHTML= "";	
		return true;	
	}
}