<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
  
  function TotalCost(){
	  var totalPlants=document.getElementById('totalPlants').value;
	  var eachPlantCost=document.getElementById('eachCost').value;
	  var TotalCost=totalPlants*eachPlantCost;
	  document.getElementById('totalCost').value=TotalCost;
  }
  
  function BalanceAmount(){
	  var totalCost=document.getElementById('totalCost').value;
	  var amountPaid=document.getElementById('amountPaid').value;
	  var BalanceAmount=totalCost-amountPaid;
	  document.getElementById('balanceAmount').value=BalanceAmount;
  }
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
<%  	String customerId=request.getParameter("customerId");
		String date=request.getParameter("date");
		String cVillage=request.getParameter("cVillage");
		String cName=request.getParameter("cName");
		String contact=request.getParameter("contact");
		String pType=request.getParameter("pType");
		String totalPlants=request.getParameter("totalPlants");
		String eachCost=request.getParameter("eachCost");
		String totalCost=request.getParameter("totalCost");
		String amountPaid=request.getParameter("amountPaid");
		String balance=request.getParameter("balance");
		%>
		<center>
		<h2 style="color:white;">Update Selling Details</h2>
		
<form target="fm2" action="Controller" method="post">
<table cellspacing="2" cellpadding="2">
<tr>
<td style="color:white;">Customer ID</td>
<td><input type="text" name="customerID" value="<%=customerId%>" readOnly="readonly"/>
</td></tr>
<tr>
<td style="color:white;">Date</td>
<td><input type="text" name="date" class="datepicker" value="<%=date%>"/>
</td></tr>
<tr>
<td style="color:white;">Name of the village</td>
<td><input type="text" name="villageName" value="<%=cVillage%>"/>
</td></tr>
<tr>
<td style="color:white;">Name of the customer</td>
<td><input type="text" name="customerName" value="<%=cName%>"/>
</td></tr>
<tr>
<td style="color:white;">Customer Contact</td>
<td><input type="text" name="customerContact" value="<%=contact%>"/>
</td></tr>
<tr>
<td style="color:white;">Type of product</td>
<td><select name="productType" value="<%=pType%>">
<option value="select">--Select--</option>
<option value="Teja">Teja</option>
<option value="341">341</option>
<option value="Teja+341">Teja+341</option></select>

</td></tr>
<tr>
<td style="color:white;">Total no.of plants</td>
<td><input type="text" name="totalPlants"  id="totalPlants" value="<%=totalPlants%>" />
</td></tr>
<tr>
<td style="color:white;">Cost per each plant</td>
<td><input type="text" name="eachCost"  id="eachCost" value="<%=eachCost%>" onChange="TotalCost()"/>
</td></tr>
<tr>
<td style="color:white;">Total cost</td>
<td><input type="text" name="totalCost"  id="totalCost" value=""/>
</td></tr>
<tr>
<td style="color:white;">Amount Paid</td>
<td><input type="text" name="amountPaid"  id="amountPaid" value="<%=amountPaid%>" onChange="BalanceAmount()" />
</td></tr>
<tr>
<td style="color:white;">Balance Amount</td>
<td><input type="text" name="balanceAmount"  id="balanceAmount" value="" />
</td></tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Register">&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="action" value="updateSellingDetails"/><input type="reset" value="Reset"></td></tr>

</table>
</form>
<br>
<a href="viewSellingDetails.jsp" class="myButton">Back</a>
</center>
</body>
</html>