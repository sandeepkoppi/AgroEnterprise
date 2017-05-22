<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.util.*,java.io.*,service.*,modal.*,dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<h2 style="color:white;">Selling Details</h2><br>

<% 
ArrayList<SellingDetails> vList=(ArrayList<SellingDetails>) request.getAttribute("al");
if(vList!=null)
{
	%>
	<table border="2" style="border-color:white;">
		<tr>
		<th style="color:white;">Customer_ID</th>
		<th style="color:white;">Date</th>
		<th style="color:white;">Customer_Village</th>
		<th style="color:white;">Customer_Name</th>
		<th style="color:white;">Mobile_No</th>
		<th style="color:white;">Product_Type</th>
		<th style="color:white;">Total Plants</th>
		<th style="color:white;">Each Plant Cost</th>
		<th style="color:white;">Total Cost</th>
		<th style="color:white;">Amount Paid</th>
		<th style="color:white;">Balance Amount</th>
		</tr>
		<% for(SellingDetails view:vList){
	%>
		<tr>
		    <td style="color:white;"><%=view.getCustomerId() %></td>
		    <td style="color:white;"><%=view.getDate() %></td>
			<td style="color:white;"><%=view.getcVillage() %></td>
			<td style="color:white;"><%=view.getCname()%></td>
			<td style="color:white;"><%=view.getContact()%></td>
			<td style="color:white;"><%=view.getpType() %></td>
			<td style="color:white;"><%=view.getTotalPlants() %></td>
			<td style="color:white;"><%=view.getEachCost() %></td>
			<td style="color:white;"><%=view.getTotalCost()%></td>
			<td style="color:white;"><%=view.getAmountPaid()%></td>
			<td style="color:white;"><%=view.getBalance() %></td>
			<td style="color:white;"><a href="updateSelling.jsp?   &customerId=<%= view.getCustomerId() %>
											&date=<%= view.getDate() %>
											&cVillage=<%= view.getcVillage()%>
											&cName=<%= view.getCname()%>
											&contact=<%=view.getContact() %>
											&pType=<%= view.getpType() %>
											&totalPlants=<%= view.getTotalPlants()%>
											&eachCost=<%= view.getEachCost()%>
											&totalCost=<%=view.getTotalCost() %>
											&amountPaid=<%= view.getAmountPaid()%>
											&balance=<%=view.getBalance() %>">Update</a></td>
											
			<td style="color:white;"><a href="DeleteSelling.jsp?&customerId=<%= view.getCustomerId() %>
											&date=<%= view.getDate() %>
											&cVillage=<%= view.getcVillage()%>
											&cName=<%= view.getCname()%>
											&contact=<%=view.getContact() %>
											&pType=<%= view.getpType() %>
											&totalPlants=<%= view.getTotalPlants()%>
											&eachCost=<%= view.getEachCost()%>
											&totalCost=<%=view.getTotalCost() %>
											&amountPaid=<%= view.getAmountPaid()%>
											&balance=<%=view.getBalance() %>">Delete</a></td>
		</tr>

		
	<%
	}	
	%>
	</table>
	<% 		
}
%>
<br>
<a href="productView.jsp" class="myButton">Back</a>
</center>
</body>
</html>