<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int  mid=Integer.parseInt(request.getParameter("mid"));
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "jeshu", "jeshu1108@");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("update mails set inbox=0 where mid="+mid+"");
        out.println("<center><b>Data is successfully Delated!<br><a href='inbox.jsp'>Check Now</a></b></center>");
        }
        catch(Exception e)
        {
        System.out.println();
        e.printStackTrace();
        }
 %>
