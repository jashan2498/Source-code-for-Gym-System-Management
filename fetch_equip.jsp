<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ page import="java.io.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/homeA.css">

 
	<link rel="stylesheet" href="css/footer.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
 
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

margin-left:180px;
margin-right:30px;
}
tr:hover {background-color: #f5f5f5;}
td
{ 
padding:75px;
padding-bottom:50px;
text-align:center;
font-size:20px;
font-family:"Comic Sans MS", cursive, sans-serif;
 vertical-align: bottom;
 height:40px;
}
</style>
</head>
<body>


<div class="navbar">
  <a href="homeA.jsp">HOME</a>
  <div class="dropdown">
    <button class="dropbtn">CLASSES
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="bhangra.jsp">BHANGRA</a>
      <a href="aerobics.jsp">AEROBICS</a>
      <a href="yoga.jsp">YOGA</a>
    </div>
  </div>
   <a href="fetch_trainers.jsp">TRAINERS</a>
    <a href="fetch_equip.jsp">EQUIPMENTS</a>
     <a href="design.jsp">ADMIN</a>
      <a href="contacts.jsp">CONTACTS</a>
      <a href="feedback.jsp">FEEDBACK</a>
      <a href="#home"></a>
      <a href="#home"></a>
      <a href="#home"></a>
      <a href="#home"></a>
      <a href="#home"></a>
      <a href="#home"></a>
      <img src="images/logo2.jpg" width="170" height="110">
</div>


<div>
<table>
<tr>
<th>Name</th>
<th>Description</th>
<th>Photo</th>
</tr>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
 Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("Select * from equip");
while(rs.next())
{ String ss=rs.getString("id");
%>
<tr>
<td width="20%" ><% out.println(rs.getString("name"));%></td>
<td width="20%"><% out.println(rs.getString("description"));%></td>
<td width="20%"><img src="${pageContext.request.contextPath}/fetch_equip?<%out.print(ss);%>" width="400px" height="300px"></td> 
</tr>
<% } } 
catch(Exception ex)
{
	System.out.print(ex);
} 
%>

</table>
</div>
<footer class="footer-distributed">
 
			<div class="footer-left">
          <img src="images/logo2.jpg">
				<h3>About<span>Fitness</span></h3>
 
				<p class="footer-links">
					<a href="homeA.jsp">Home</a>
					|
					<a href="aerobics.jsp">Classes</a>
					|
					<a href="fetch_trainers.jsp">Trainers</a>
					|
					<a href="contacts.jsp">Contact</a>
				</p>
 
				
			</div>
 
			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					  <p><span>Phase-5,
						 Second Floor</span>
						Mohali</p>
				</div>
 
				<div>
					<i class="fa fa-phone"></i>
					<p>+91 22-27782183</p>
				</div>
				
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span>
					We are training without limits, fuelled by the power of transformation and the promise of infinite potential.</p>
				<div class="footer-icons">
					<a href="https://www.facebook.com/Fitness-105087577656066/?modal=admin_todo_tour"><i class="fa fa-facebook"></i></a>
				
					<a href="https://www.instagram.com/ironedgegym/"><i class="fa fa-instagram"></i></a>
					
					<a href="https://www.youtube.com/user/TheFitnessMarshall"><i class="fa fa-youtube"></i></a>
				</div>
			</div>
		</footer>

</body>
</html>