<html>
<head><style>
.myTextbox{
    font-size: 32px;
    size: 30px;
}
</style></head>
<body>
<%
String str=request.getParameter("msg");
if(str!=null)
    out.println("<p><font size=32 color=red>"+str+"</font></p>");
%>
<br><br><br><br><br><br><br><br>
<form name="f1" action="validateLogin.jsp">
<table align="center" width="50%">
<tr>
    <td>Email ID:<input type="email" name="uname" id="uname" class="myTextbox" placeholder="Email"></td>
</tr>
<tr>
    <td>Password:<input type="password" name="pwd" id="pwd" class="myTextbox" placeholder="password"></td>
</tr>
<tr>
    <td><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset"></td>
</tr>
</table></form></body></html>
