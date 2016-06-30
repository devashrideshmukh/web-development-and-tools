
function abc()
{
	
	document.getElementById('Errorfname').innerHTML=' ';
	document.getElementById('Errorlname').innerHTML=' ';
	document.getElementById('Errorgender').innerHTML=' ';
	document.getElementById('Errordob').innerHTML=' ';
	document.getElementById('Errorcontact').innerHTML=' ';
	document.getElementById('Erroraddress').innerHTML=' ';
	document.getElementById('Errormail').innerHTML=' ';
	document.getElementById('Errorproof').innerHTML=' ';
	document.getElementById('Erroraproof').innerHTML=' ';
	document.getElementById('Errorid').innerHTML=' ';
	document.getElementById('Errorad').innerHTML=' ';
	document.getElementById('srvrError').innerHTML=' ';
	
}



function validateForm( context)
{
	//alert("hello");
	var bool = false;
	var chkfname = validatefName();	
	var chklname = validatelName();
	var chkgen = validateGender();
	var chkadd = validateAddress();
	var chkcon = validateContact();
	var chkdob = validateDob();
	var chkmail = validateEmail();
	var chkiproof = validateIdproof();
	var chkaproof = validateAdproof();
	var chkidimg = validateFile();
	var chkadimg = validateFile1();
	var url = context+"/CustomerController?source=register";
	//alert(chkfname+"  "+chklname+"  "+chkgen+"  "+chkadd+"  "+chkcon+"  "+chkdob+"  "+chkmail+"  "+chkiproof+"  "+chkaproof+"  "+chkidimg+"  "+chkadimg);
	if( chkfname == true && chklname == true && chkgen == true && chkadd == true && chkcon == true && chkdob == true && chkmail == true && chkiproof == true && chkaproof==true && chkidimg == true && chkadimg == true  )
	{	
		//alert("2");
		document.addcustomer.action=url;
		bool=true;
		
	}
	else
	{
		//alert("1");
 		alert("Please enter valid information."); 
 		document.addcustomer.action.value='';
 		bool=false;
	}
	return bool;
}

function validateFile()
{

    var fileName = document.getElementById("idImage").value;
   
    if(fileName.length==0)
    {
    	document.getElementById('Errorid').innerHTML="Please browse to select file name ";
    	return false;
    }    
    else if (fileName.split(".")[1].toUpperCase() == "JPG")
    	
        {
    	document.getElementById('Errorid').innerHTML=" " ;
    	     return true;
    	}
    else {
    	  
    	 document.getElementById("Errorid").innerHTML="File with " + fileName.split(".")[1] + " is invalid. Upload a valid proof with .jpg extensions";
          return false;
    }
   
}

function validateFile1()
{  
	
	
    var fileName = document.getElementById("aImage").value;
   
    if(fileName.length==0)
    {
    	document.getElementById('Errorad').innerHTML="Please browse to select file name ";
    	return false;
    }    
    else if (fileName.split(".")[1].toUpperCase() == "JPG")
        {document.getElementById('Errorid').innerHTML=" " ;
    	return true;}
    else {
    	 document.getElementById("Errorad").innerHTML="File with " + fileName.split(".")[1] + " is invalid. Upload a valid proof with .jpg extensions";
        return false;
    }
    
}

//function validateFile()
//{
//	var file=document.getElementById("idImage").value;
//	var fileType;
//	
//	var flag = false ;
//	
//	if(file!=null && file!="")
//	{
//		alert("Please enter img."); 
//		
//		fileType=file.substring(file.lastIndexOf(".")+1);
//		
//		if(fileType!="JPG"&&fileType!="jpg"&&fileType!="jpeg"&&fileType!="JPEG")
//		{
//			document.getElementById("Errorid").innerHTML="Please browse to upload valid image file";
//			flag = false ;
//		}
//		else
//		{		
//			document.getElementById("Errorid").innerHTML="";
//			flag = true ;
//		}
//		
//	}
//	else
//	{
//		document.getElementById("Errorid").innerHTML="Please browse to upload valid image file";
//		flag = false ;
//	}
//	
//	
//	
//	
////	
////	if(file==""||file==null)
////    {		
////		document.getElementById("Errorid").innerHTML="Please browse to upload Id Proof Image";
////		if(fileType!="JPG"&&fileType!="jpg"&&fileType!="jpeg"&&fileType!="JPEG")
////		{document.getElementById("Errorid").innerHTML="Please browse to upload valid image file";	}
////		return false;
////	}
//	
//	return flag;
//	
//}

//function validateFile1()
//{
//	var file=document.getElementById("aImage").value;
//	var fileType;
//	
//	if(file!=null && file!="")
//	{
//		fileType=file.substring(file.lastIndexOf(".")+1);
//	}
//	
//	if(fileType!="JPG"&&fileType!="jpg"&&fileType!="jpeg"&&fileType!="JPEG")
//	{document.getElementById("Errorad").innerHTML="Please browse to upload valid image file";
//	return false;}
//	if(file==""||file==null)
//	{
//		document.getElementById("Errorad").innerHTML="Please browse to upload Address Proof Image";
//		if(fileType!="JPG"&&fileType!="jpg"&&fileType!="jpeg"&&fileType!="JPEG")
//			{document.getElementById("Errorad").innerHTML="Please browse to upload valid image file";	}
//		//alert(file+fileType);
//		
//		return false;
//	}
//	else
//	{	
//		//alert(file+fileType);
//		document.getElementById("Errorad").innerHTML="";
//		return true;
//	}
//}


function validatefName()
{
	var name1 = document.getElementById('fname').value;
	var regex=/^[A-Za-z]+$/i;
	
	if(document.getElementById('fname').value.length==0 || document.getElementById('fname').value.length == null || document.getElementById('fname').value.length == "")
	{
		document.getElementById('Errorfname').innerHTML="Please enter First name";
		return false;
	}
	else if(document.getElementById('fname').value.length>35)
	{
		document.getElementById('Errorfname').innerHTML="Too long";
		return false;
	} 	
	else if(!regex.test(name1))
	{
		document.getElementById('Errorfname').innerHTML="Please enter a valid First name";
		return false;
	}
	else
	{
		document.getElementById('Errorfname').innerHTML="";
		return true;
	}
	
}


function validatelName()
{
	var name1 = document.getElementById('lname').value;
	var regex=/^[A-Za-z]+$/i;
	
	if(document.getElementById('lname').value.length==0 || document.getElementById('lname').value.length == null || document.getElementById('lname').value.length == "")
	{
		document.getElementById('Errorlname').innerHTML="Please enter Last name";
		return false;
	}
	else if(document.getElementById('lname').value.length>35)
	{
		document.getElementById('Errorlname').innerHTML="Too long";
		return false;
	} 	
	else if(!regex.test(name1))
	{
		document.getElementById('Errorlname').innerHTML="Please enter a valid Last name";
		return false;
	}
	else
	{
		document.getElementById('Errorlname').innerHTML="";
		return true;
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
	else if( (document.getElementById('contact').value.length<10) || (document.getElementById('contact').value.length>10) )
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


function validateIdproof()
{
   if( (document.getElementById('idno').selectedIndex == 0) || (document.getElementById('idno').selectedIndex == "Select") )
   {
		document.getElementById('Errorproof').innerHTML="Please select your Id proof";
		return false;
   }
	else
	{
		document.getElementById('Errorproof').innerHTML="";
		return true;
		}

}

function validateAdproof()
{
   if( (document.getElementById('adno').selectedIndex == 0) || (document.getElementById('adno').selectedIndex == "Select") )
   {
		document.getElementById('Erroraproof').innerHTML="Please select your Address proof";
		return false;
   }
	else
	{
		document.getElementById('Erroraproof').innerHTML="";
		return true;}

}



function validateGender()
{			
	if(document.getElementById('male').checked) 
	{
		document.getElementById("Errorgender").innerHTML="";
		return true;
	         //Male radio button is checked
	}
	else if(document.getElementById('female').checked) 
	{
		document.getElementById("Errorgender").innerHTML="";
		return true;
	         //Female is checked
	}
	else
	{
		document.getElementById("Errorgender").innerHTML="Select your Gender";
		return false;
	}
}


/*function validateEmail()
 {
 var x = document.getElementById('mail').value;
 var atpos=x.indexOf("@");
 var dotpos=x.lastIndexOf(".");
 if(document.getElementById('mail').value.length==0)
   {
     document.getElementById('Errormail').innerHTML="";
     return true;
   }

 else if (atpos<1 || dotpos<atpos+3 || dotpos+2>=x.length)
   {
   document.getElementById('Errormail').innerHTML="Please enter a valid e-mail Address";
   return false;
   }

  else
   {
     document.getElementById('Errormail').innerHTML="";
     return true;
   }

}*/

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


function validateDob()
{
	//alert(document.getElementById('dob').value);

	if( document.getElementById('dob').value.length<0||document.getElementById('dob').value=='')
	{
		document.getElementById('Errordob').innerHTML="Please enter your Date of birth";
		return false;
	}
	else
	{
		document.getElementById('Errordob').innerHTML="";
		return true;
	}


}

