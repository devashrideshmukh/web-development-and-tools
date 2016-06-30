function abc()
{	
	document.getElementById('Errorcontact').innerHTML=' ';
	document.getElementById('Errormail').innerHTML=' ';
	document.getElementById('Erroraddress').innerHTML=' ';
	document.getElementById('Errorimg').innerHTML=' ';
	
	document.getElementById('srvrError').innerHTML="";
	
	
}



function validateForm()
{
	
	var chkcon = validateContact();
	
	var chkmail = validateEmail();
	
	var chkadd = validateAddress();
	
	var chkimg = validateFile();
	
	var bool = false ;
	
	if( chkcon == true && chkmail == true && chkimg == true && chkadd == true  )
	{
		bool = true ;
	}
	else	
	{	
 		alert("Please enter valid information for update."); 
 		bool = false ;
	}
	
	return bool;

}

function validateFile()
{

    var fileName = document.getElementById("apImg").value;
   
//    if(fileName.length==0)
//    {
//    	document.getElementById('Errorimg').innerHTML="Please browse to select file name ";
//    	return false;
//    }    
//    else
    if (fileName.split(".")[1].toUpperCase() == "JPG")
    	
        {
    	document.getElementById('Errorimg').innerHTML=" " ;
    	     return true;
    	}
    else {
    	  
    	 document.getElementById("Errorimg").innerHTML="File with " + fileName.split(".")[1] + " is invalid. Upload a valid proof with .jpg extensions";
          return false;
    }
   
}

function validateAddress()
{
	var adr = document.getElementById('address').value;
		
	if( adr == "" || adr == null || document.getElementById('address').value.length == 0)
	{
		document.getElementById('Erroraddress').innerHTML="Please enter a valid Address";
		return false;
	}
	else if(document.getElementById('address').value.length>75)
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
	
	
	if (phn == "" || phn == null || document.getElementById('contact').value.length == 0)
  	{
  		document.getElementById('Errorcontact').innerHTML="Please enter a valid Contact no";
  		return false;
  	}
	else if(isNaN(phn))
	{
		document.getElementById('Errorcontact').innerHTML="Please enter a valid Contact no";
		return false;
    }
	else if( (document.getElementById('contact').value.length<10) || (document.getElementById('contact').value.length>10) )
	{
		document.getElementById('Errorcontact').innerHTML="Contact no should be of 10 digits";
		return false;
	}
		
	else
	{
		document.getElementById('Errorcontact').innerHTML="";
		return true;
	}
	
}




var errors=true;
var val=true;



function validateEmail()
{
  var x=document.getElementById("mail").value;
  var atpos=x.indexOf("@");
  var dotpos=x.lastIndexOf(".");
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
