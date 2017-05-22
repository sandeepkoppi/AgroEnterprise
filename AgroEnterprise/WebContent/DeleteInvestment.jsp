<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Investment Details</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
 
  <link rel="stylesheet" href="/resources/demos/style.css" />
 
  <style>
    .datepicker{
     
    }
  </style>
 
  <script>
  $(function() {
    $( ".datepicker" ).datepicker();
  });
  </script>
  <style type="text/css">
.myButton {
	-moz-box-shadow: 3px 4px 0px 0px #8a2a21;
	-webkit-box-shadow: 3px 4px 0px 0px #8a2a21;
	box-shadow: 3px 4px 0px 0px #8a2a21;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c62d1f), color-stop(1, #f24437));
	background:-moz-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-webkit-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-o-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-ms-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:linear-gradient(to bottom, #c62d1f 5%, #f24437 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c62d1f', endColorstr='#f24437',GradientType=0);
	background-color:#c62d1f;
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:17px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #810e05;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f24437), color-stop(1, #c62d1f));
	background:-moz-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-webkit-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-o-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-ms-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:linear-gradient(to bottom, #f24437 5%, #c62d1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f24437', endColorstr='#c62d1f',GradientType=0);
	background-color:#f24437;
}
.myButton:active {
	position:relative;
	top:1px;
}
</style>
</head>
<body bgcolor="black">
<%  	String Serial_No=request.getParameter("Serial_No");
		String date=request.getParameter("date");
		String purpose=request.getParameter("purpose");
		String name=request.getParameter("name");
		String amount=request.getParameter("amount");
		%>
		<center>
		<h1 style="color:red;">Are you sure!!!</h1>
		<h2 style="color:white;">Do you want to Delete below Investment Details..?</h2>
		
<form target="fm2" action="Controller" method="post">
<table cellspacing="2" cellpadding="2">
<tr>
<td style="color:white;">Serial_No</td>
<td><input type="text" name="Serial_No" value="<%=Serial_No%>" readOnly="readonly"/>
</td></tr>
<tr>
<td style="color:white;">Date</td>
<td><input type="text" name="date" class="datepicker" value="<%=date%>"/>
</td></tr>
<tr>
<td style="color:white;">Purpose</td>
<td><select name="purpose" value="<%=purpose%>">
<option value="select">--Select--</option>
<option value="Worker">Workers</option>
<option value="Trays">Trays</option>
<option value="Mud">Mud</option>
<option value="Seeds">Seeds</option>
<option value="Fetilizer">Fertilizer</option>
<option value="Pesticide">Pesticides</option>
<option value="Other">Other works</option></select>

</td></tr>
<tr>
<td style="color:white;">Name <font color="red">(person who took amount)</font></td>
<td><input type="text" name="name" value="<%=name %>"/>
</td></tr>
<tr>
<td style="color:white;">Amount</td>
<td><input type="text" name="amount" value="<%=amount %>"/>
</td></tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Delete">&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="action" value="delete"/><input type="reset" value="Reset"></td></tr>

</table>
</form>
<br>
<a href="view.jsp" class="myButton">Back</a>
</center>

</body>
</html>