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
<center><br>
<h1 style="color:white;">Please select date first</h1><br>
<form target="controller" method="post">
<table>
<tr>
<td style="color:white;">
Select date :</td><td> <input type="text" class="datepicker"/></td></tr>
<tr><td colspan="2" align="center"><input type="submit"  value="submit"/>&nbsp;<input type="hidden" name="action" value="attendance"/></td></tr>
</table>
</form>
</center>
</body>
</html>