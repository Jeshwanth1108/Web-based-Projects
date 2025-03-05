<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String uid2 = request.getParameter("Email");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "myprojectdb";
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
    </div>
<h1>Retrieve data from database in jsp</h1>
<table border="1" align="center" width="60%">
<tr>
<th>username</th>
<th>email</th>
<th>mobilenum</th>
<th>password</th>
</tr>
<%
String linkUrl="editProfile.jsp?Email="+uid2;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from register where email="+uid2;
resultSet = statement.executeQuery(sql);
String uid=null;
while(resultSet.next()){
uid=resultSet.getString("email");

%>
<tr>
<td><%=resultSet.getString("username")%></td>
<td><%=uid%></td>
<td><%=resultSet.getString("contact")%></td>
<td><%=resultSet.getString("password") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
out.println(e.getMessage());
}
%>
</table> 
<center><a href=Re.jsp>Back</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=<%=linkUrl%>>Edit Profile</a></center>
</body>
</html>
