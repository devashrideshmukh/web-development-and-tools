

function chkLen()
{
	var adr = document.getElementById('address').value.length ;
	
	var msg = 75 - adr ;
	
	if( adr > 0 )
	{
		document.getElementById('Erroraddress').innerHTML="characters left";
	}
	
}