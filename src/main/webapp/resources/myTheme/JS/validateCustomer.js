function abc()
{
		document.getElementById('idError').innerHTML="";
	document.getElementById('1').innerHTML="";
	document.forms['frm1'].reset();



}


function validateId()
{
	
	var cid=document.getElementById("id").value;
	if(cid==""||cid==null)
	{
		document.getElementById("idError").innerHTML= "  Please enter the Customer Id."
			return false;
	}
	else
	{
		document.getElementById("idError").innerHTML= "";	
		return true;	
	}
}


//
//
//function validateId()
//{	
//	//alert("enter pls");
//	var Id= document.getElementById("id").value;
//	var idPattern = /^\d{6}$/;
//	
//	//alert(Id);
//	if(Id==null || Id =="")
//	{
//		//alert("enter pls");
//      document.getElementById("idError").innerHTML="Please enter customer ID";
//      //document.getElementById("strError").style.visibility='hidden';
//      
//      return false;
//     
//      
//	}
//	else if(!Id.match(idPattern))
//	{
//	document.getElementById("idError").innerHTML="Please enter 6 digit customer ID";
//	//document.getElementById("strError").style.visibility='hidden';
//	return false;
//	}
//	/* else if(!Id.match(namePattern))
//	{
//	document.getElementById("error").innerHTML="Please enter 4 digit numeric customer ID";
//	document.getElementById("strError").style.visibility='hidden';
//	return false;
//	} */
//	else
//	{
//	document.getElementById("idError").innerHTML="";
//	return true;
//	}
//}
//
//function clearField()
//{
//	document.getElementById("idError").innerHTML="";	
//	document.getElementById("1").innerHTML="";
//}
//
//function resetbutton()
//{
////	document.form.id.value = '';
////	document.getElementById("2").innerHTML="";
////	document.getElementById("1").style.visibility='hidden';
////	document.getElementById("idError").style.visibility='hidden';
//	//document.getElementById("strError").innerHTML="";
//	document.getElementById("1").value='';
//	document.getElementById("idError").value='';
////	return false;
//}