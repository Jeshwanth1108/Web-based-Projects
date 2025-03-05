<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user_name=request.getParameter("username");
String user_email=request.getParameter("Email");
String user_num=request.getParameter("Contact");
String password=request.getParameter("password");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyProject", "jeshu", "jeshu1108@");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into register(username,email,contact,password)values('"+user_name+"','"+user_email+"','"+user_num+"'','"+password+"')");
        out.println("<center><b>Registered Successfully</b></center>");        }
        catch(Exception e)
        {
        System.out.print(e.getMessage());
        e.printStackTrace();
        }
 %>