

function confirmAct()
{
var agree = confirm("Are you sure you want to activate this customer ?");

var flag = false;

if ( agree==true )
{
	flag =  true ;
}


return flag;
}