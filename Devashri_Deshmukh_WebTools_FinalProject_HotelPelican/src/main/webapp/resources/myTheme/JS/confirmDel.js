

function confirmDelete()
{
var agree = confirm("Are you sure you want to deactivate this customer ?");

var flag = false;

if ( agree==true )
{
	flag =  true ;
}


return flag;
}