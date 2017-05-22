<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body bgcolor="black">
<br>
<center><h1 style="color:white;">Please enter Selling details</h1><br>
<form target="fm2" action="Controller" method="post">
<table cellspacing="2" cellpadding="2">
<tr>
<td style="color:white;">Date</td>
<td><input type="text" name="date" class="datepicker"/>
</td></tr>
<tr>
<td style="color:white;">Name of the village</td>
<td><input type="text" name="villageName"/>
</td></tr>
<tr>
<td style="color:white;">Name of the customer</td>
<td><input type="text" name="customerName"/>
</td></tr>
<tr>
<td style="color:white;">Customer Contact</td>
<td><input type="text" name="customerContact"/>
</td></tr>
<tr>
<td style="color:white;">Type of product</td>
<td><select name="productType">
<option value="select">--Select--</option>
<option value="Teja">Teja</option>
<option value="341">341</option>
<option value="Teja+341">Teja+341</option></select>

</td></tr>
<tr>
<td style="color:white;">Total no.of plants</td>
<td><input type="text" name="totalPlants"  id="totalPlants"  />
</td></tr>
<tr>
<td style="color:white;">Cost per each plant</td>
<td><input type="text" name="eachCost"  id="eachCost" value="" onChange="TotalCost()"/>
</td></tr>
<tr>
<td style="color:white;">Total cost</td>
<td><input type="text" name="totalCost"  id="totalCost" value=""/>
</td></tr>
<tr>
<td style="color:white;">Amount Paid</td>
<td><input type="text" name="amountPaid"  id="amountPaid" value="" onChange="BalanceAmount()" />
</td></tr>
<tr>
<td style="color:white;">Balance Amount</td>
<td><input type="text" name="balanceAmount"  id="balanceAmount"  />
</td></tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Register">&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="action" value="addSellingDetails"/><input type="reset" value="Reset"></td></tr>

</table>
</form>
<a href="productDetails.jsp" class="myButton">Back</a>
</center>

</body>
</html>