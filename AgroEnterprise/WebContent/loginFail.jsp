<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login failed</title>
<style>
body {
    background-image:  url(GM.jpg);
    background-size:   cover;     
    background-repeat: no-repeat;
    background-position: center center;           
}
h1 {color=blue;font-size=60px;font-family=TimesNewRoman;text-align=center;}
h3 {color=red;text-align=center;}
</style>
</head>
<body>
<center>
<br><br>
<h2 style="color:red;">Invalid User Name or Password..!!!</h2>
<h3 style="color:red;">(Please try again)</h3>
 <form target="fm2" action="Controller" method="post">
<table cellspacing="2" cellpadding="2">
<tr>
<td style="color:white;" align="center">
  USER NAME :  <input type="text" 	name="uname">
</td>
</tr>
<tr>
<td style="color:white;" align="center">

  PASSWORD :  <input type="password"	name="pswd">
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input   type="Submit"   value="login" /><input type="hidden" name="action" value="login"/>
<a href="options.jsp" style="color:white;">Reset Password</a>
</td>
</tr>

</table>
</form>
</center>
</body>
</html>