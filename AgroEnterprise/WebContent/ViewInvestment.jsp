<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.util.*,java.io.*,service.*,modal.*,dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Investment Details</title>
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
<center>
<h2 style="color:white;">Investment Details</h2><br>

<% 
ArrayList<AddInvestment> vList=(ArrayList<AddInvestment>) request.getAttribute("al");
if(vList!=null)
{
	%>
	<table border="2" style="border-color:white;">
		<tr>
		<th style="color:white;">Serial_No</th>
		<th style="color:white;">Date</th>
		<th style="color:white;">Purpose</th>
		<th style="color:white;">Name</th>
		<th style="color:white;">Amount</th>
		<th style="color:white;">Update</th>
		<th style="color:white;">Delete</th>
		</tr>
		<% for(AddInvestment view:vList){
	%>
		<tr>
		    <td style="color:white;"><%=view.getSerial_No() %></td>
			<td style="color:white;"><%=view.getDate() %></td>
			<td style="color:white;"><%=view.getPurpose()%></td>
			<td style="color:white;"><%=view.getName()%></td>
			<td style="color:white;"><%=view.getAmount() %></td>
			<td style="color:white;"><a href="updateInvestment.jsp?   &Serial_No=<%= view.getSerial_No() %>
											&date=<%= view.getDate() %>
											&purpose=<%= view.getPurpose()%>
											&name=<%= view.getName()%>
											&amount=<%=view.getAmount() %>">Update</a></td>
											
			<td style="color:white;"><a href="DeleteInvestment.jsp?&Serial_No=<%= view.getSerial_No() %>
											&date=<%= view.getDate() %>
											&purpose=<%= view.getPurpose()%>
											&name=<%= view.getName()%>
											&amount=<%=view.getAmount() %>">Delete</a></td>
		</tr>

		
	<%
	}	
	%>
	</table>
	<% 		
}
%>
<br>
<a href="view.jsp" class="myButton">Back</a>
</center>
</body>
</html>