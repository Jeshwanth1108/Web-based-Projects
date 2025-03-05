<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("Email");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "MyProject";
String userid = "jeshu";
String password = "jeshu1108@";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <link href="style1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="full-page">
    <div class="nav-logo">
        <img src="chlogo.jpeg">
        <div class="logo-text"><b>STAR HARVESTERS</b></div>
    </div>
</div><br><br><br>
<h1>Successfully Registered</h1>
<table border="1" align="center" width="60%">
<tr>
<th>username</th>
<th>Email</th>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select username,email from register";
resultSet = statement.executeQuery(sql);
String username=null;
String linkUrl2=null;
while(resultSet.next()){
username=resultSet.getString("email");
linkUrl2="viewUser.jsp?username="+email;
%>
<tr>
<td><%=username%></td>
<td><%=resultSet.getString("username") %></td>
<td><a href=<%=linkUrl2%>>View Profile</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
out.println(e.getMessage());
}
%>
</table> <br><br>
<a href="login.html">Login</a>

</body>
</html>