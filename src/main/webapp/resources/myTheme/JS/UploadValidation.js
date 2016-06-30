/*function uploadValidate()
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

function viewValidation()
{

	var phn = document.getElementById('viewconnid').value;
	
	
	if (phn == "" || phn == null || document.getElementById('viewconnid').value.length == 0)
  	{
  		document.getElementById('view1').innerHTML="Please specify connection no";
  		return false;
  	}
	else if( (document.getElementById('viewconnid').value.length<10) || (document.getElementById('viewconnid').value.length>10) )
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
	
}*/

function extension_Validation()
{
var validFileExtensions = [ ".xml"];

function Validate(oForm) {
    var arrInputs = oForm.getElementsByTagName("input");
    for (var i = 0; i < arrInputs.length; i++) {
        var oInput = arrInputs[i];
        if (oInput.type == "file") {
            var sFileName = oInput.value;
            if (sFileName.length > 0) {
                var blnValid = false;
                for (var j = 0; j < _validFileExtensions.length; j++) {
                    var sCurExtension = _validFileExtensions[j];
                    if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                        blnValid = true;
                        break;
                    }
                }

                if (!blnValid) {
                    alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                    return false;
                }
            }
        }
    }

    return true;
}
}