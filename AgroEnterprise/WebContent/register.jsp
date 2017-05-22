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
  </script>
</head>
<body bgcolor="black">
<br>
<center><h1 style="color:white;">Please enter Investment details</h1><br>
<form target="fm2" action="Controller" method="post">
<table cellspacing="2" cellpadding="2">
<tr>
<td style="color:white;">Date</td>
<td><input type="text" name="date" class="datepicker"/>
</td></tr>
<tr>
<td style="color:white;">Purpose</td>
<td><select name="purpose">
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
<td><input type="text" name="name"/>
</td></tr>
<tr>
<td style="color:white;">Amount</td>
<td><input type="text" name="amount"/>
</td></tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Register">&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="action" value="add"/><input type="reset" value="Reset"></td></tr>

</table>
</form>
<a href="links.jsp" class="myButton">Back</a>
</center>
</body>
</html>