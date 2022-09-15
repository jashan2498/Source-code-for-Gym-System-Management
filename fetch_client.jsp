<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ page import="java.io.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
background-color:black;
}
th
{ 
 border: 1px solid black;
  background-color:#d59667;
padding:16px;
text-align:center;
font-size:20px;
font-family:"Comic Sans MS", cursive, sans-serif;
height:20px;
}
table,td {
  border: 1px solid black;
  background-color:#ffff83;
}
table
{ background-color:#9f673a;
border-collapse:collapse;
width:40%;

margin-left:0px;
margin-right:10px;
}
tr:hover {background-color: #f5f5f5;}
td
{ 
padding:75px;
padding-bottom:50px;
text-align:center;
font-size:11px;
font-family:"Comic Sans MS", cursive, sans-serif;
 vertical-align: bottom;
 height:30px;
}
</style>
</head>
<body><div>
<table>
<tr>
<th>Name</th>
<th>Age</th>
<th>Phone</th>
<th>Email</th>
<th>Membership</th>
<th>Address</th>
<th>Joining Date</th>
</tr>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
 Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("Select * from regform");
while(rs.next())
{ String ss=rs.getString("id");
%>
<tr>
<td width="20%" ><% out.println(rs.getString("name"));%></td>
<td width="20%"><% out.println(rs.getInt("age"));%></td>
<td width="20%"><% out.println(rs.getString("phone"));%></td>
<td width="20%"><% out.println(rs.getString("email"));%></td>
<td width="20%"><% out.println(rs.getString("membership"));%></td>
<td width="20%"><% out.println(rs.getString("address"));%></td>
<td width="20%"><% out.println(rs.getString("joining_date"));%></td>
</tr>
<% } } 
catch(Exception ex)
{
	System.out.print(ex);
} 
%>

</table>
</div>

</body>
</html>