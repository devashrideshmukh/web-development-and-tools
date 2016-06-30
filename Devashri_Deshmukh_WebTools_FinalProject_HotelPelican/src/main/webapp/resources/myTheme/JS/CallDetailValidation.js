
function uploadValidate()
{
	
	 var name=document.getElementById("filename").value;	 
	 
	 var namelength=name.length;
	 
	 if(namelength==0)
		{
			document.getElementById('up1').innerHTML="Please browse to select file name";
			return false;
		}

	 else
	 {
		 document.getElementById('up1').innerHTML="";
		 return true;
	 }
		
	
	    
 }


function confirmDelete()
{


var flag = false;

if (viewValidation())
{
	var callid = document.getElementById('viewconnid').value ;
	
	if(window.confirm("Are you sure you want to delete all call-details "+callid+" ?"))
			flag=true;
}

	return flag;
}

function viewValidation()
{

	var phn = document.getElementById('viewconnid').value;
	
	var spacevalidation = /^\s+/ ;	
	
	if (phn == "" || phn == null || document.getElementById('viewconnid').value.length == 0)
  	{
  		document.getElementById('view1').innerHTML="Please specify connection no";
  		return false;
  	}
	else if( spacevalidation.test(phn))
	{		
		document.getElementById('view1').innerHTML="Merely spaces are not allowed";
		return false;
	}
	else
	if(isNaN(phn))
	{
		document.getElementById('view1').innerHTML="Please enter digits only";
		return false;
    }	
	
	else if( (document.getElementById('viewconnid').value.length<10) || (document.getElementById('viewconnid').value.length>10) )
	{
		document.getElementById('view1').innerHTML="Contact no. should be of 10 digits";
		return false;
	}
	else
	{
		document.getElementById('view1').innerHTML="";
		return true;
	}
	
}

function checkduration()
{
	var duration = document.getElementById("duration").value;
	if(duration == " " || duration == null  || document.getElementById('duration').value.length == 0 )
		{
		document.getElementById('view1').innerHTML="Please specify duration in seconds";
  		return false;
		}
	if(isNaN(duration))
		{
			document.getElementById('view1').innerHTML="Please enter digits only ";
			return false;
		}
	else
	{
		document.getElementById('view1').innerHTML="";
		return true;
	}
	
}


function deleteValidation()
{

	var phn = document.getElementById('deleteconnid').value;
	
	
	
	if (phn == "" || phn == null || document.getElementById('deleteconnid').value.length == 0)
  	{
  		document.getElementById('view1').innerHTML="Please specify connection no";
  		return false;
  	}
	else if( spacevalidation.test(phn))
	{		
		document.getElementById('view1').innerHTML="Merely spaces are not allowed";
		return false;
	}
	else if( (document.getElementById('deleteconnid').value.length<10) || (document.getElementById('deleteconnid').value.length>10) )
	{
		document.getElementById('view1').innerHTML="Contact no. should be of 10 digits";
		return false;
	}
	else if(isNaN(phn))
	{
		document.getElementById('view1').innerHTML="Please enter digits only";
		return false;
    }	
	
	else 
	{

		document.getElementById('view1').innerHTML="";
		return true;
	}
	
}





function checkupload()
{
	var name=document.getElementById('filename').value;
	 
	 var namelength=name.length;
	 if(namelength==0)
		{
			document.getElementById('up1').innerHTML="Please browse to select file name";
			return false;
		}
	 else
	 {
		 document.getElementById('up1').innerHTML="";
		return true;
	 }
}

function resetFields()
{
	document.getElementById('view1').innerHTML=" ";
	document.getElementById('err').innerHTML="";
	 	
}

function checkFileName() {
	
    var fileName = document.getElementById("uploadFile").value;
   
    if(fileName.length==0)
    {
    	document.getElementById('up1').innerHTML="Please browse to select file name ";
    	return false;
    }    
    else if (fileName.split(".")[1].toUpperCase() == "XML")
        {return true;}
    else {
    	 document.getElementById("up2").innerHTML="File with " + fileName.split(".")[1] + " is invalid. Upload a validfile with xml extensions";
        return false;
    }
    
}

function resetUploadFields()
{
	document.getElementById('up1').innerHTML=" ";
	document.getElementById('up2').innerHTML="";
	document.getElementById('imageile').innerHTML=" ";	
}



function confirmDel()
{

	
var agree = confirm("Are you sure you want to delete this call-detail ?");

var flag = false;

if ( agree==true )
{
	flag =  true ;
}


return flag;
}
