function abc()
{
	
	
	document.getElementById('Errorcontact').innerHTML=' ';
	
	document.getElementById('Errormail').innerHTML=' ';
	
	return true;
	
}




function validateForm()
{
	//alert("hello");
	//var bool = false;
	
	
	var chkcon = validateContact();
	
	var chkmail = validateEmail();
	
	//var url = context+"/CustomerController?source=register";
	//alert(chkfname+"  "+chklname+"  "+chkgen+"  "+chkadd+"  "+chkcon+"  "+chkdob+"  "+chkmail+"  "+chkiproof+"  "+chkaproof+"  "+chkidimg+"  "+chkadimg);
	if(  chkadd == true && chkcon == true &&  chkmail == true )
	{	
		//alert("2");
		//document.addcustomer.action=url;
		return true;
		
	}
	else
	{
		//alert("1");
 	
 		//document.addcustomer.action.value='';
 		return false;
	}

}



function validateAddress()
{
	var adr = document.getElementById('address').value;
		
	if( adr == "" || adr == null || adr.length == 0)
	{
		document.getElementById('Erroraddress').innerHTML="Please enter a valid Address";
		return false;
	}
	else if(adr.length>75)
	{
		document.getElementById('Erroraddress').innerHTML="Too long";
		return false;
	} 	
	else if (adr=="" || adr==null)
  	{
  		document.getElementById('Erroraddress').innerHTML="Please enter a valid Address";
  		return false;
  	}
	else
	{
		document.getElementById('Erroraddress').innerHTML="";
		return true;
	}
	
}


function validateContact()
{
	var phn = document.getElementById('contact').value;
	
	
	if (phn == "" || phn == null || phn.length == 0)
  	{
  		document.getElementById('Errorcontact').innerHTML="Please enter a valid Contact no";
  		return false;
  	}
	else if( (phn.length<10) || (phn.length>10) )
	{
		document.getElementById('Errorcontact').innerHTML="Contact no should be of 10 digits";
		return false;
	}
	else if(isNaN(phn))
	{
		document.getElementById('Errorcontact').innerHTML="Please enter a valid Contact no";
		return false;
        }	
	else
	{
		document.getElementById('Errorcontact').innerHTML="";
		return true;
	}

}


function validateEmail()
{
  var x=document.getElementById("mail").value;
  var atpos=x.indexOf("@");
  var dotpos=x.lastIndexOf(".");

  var errors=true;
  var val=true;


        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
      {
       document.getElementById("Errormail").innerHTML="Please enter a valid Email Id";
       errors=false;
}
else
{
document.getElementById("Errormail").innerHTML="";
errors=true;

}
return errors;        
}
