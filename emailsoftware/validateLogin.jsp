<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "emailsoftware";
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
<%
try{
int flag=0;
String uid=request.getParameter("uname");
String pass=request.getParameter("pwd");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where emailid='"+uid+"' and pwd='"+pass+"'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    flag=1;
}
if(flag==1){
session.setAttribute("emailid",uid);
    response.sendRedirect("inbox.jsp");
}
else{
    response.sendRedirect("login-1.jsp?msg='invalid Credentials!'");
}
}
catch(Exception e){
    out.println(e.getMessage());
}
%>


