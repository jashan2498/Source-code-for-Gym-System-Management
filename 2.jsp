<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body, html {
  height: 100%;
  font-family:"Comic Sans MS", cursive, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/reg.jpg");

  min-height:100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin-left: 20px;
  margin-right:500px;
  max-width: 400px;
  padding: 8px;
  background-color:#ffdb58;
  height:100%;
  
}

/* Full-width input fields */
input[type=text], input[type=email], input[type=date]{
  width: 100%;
  padding: 14px;
  margin: 5px 0 22px 0;
  border: none;
  background:#f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}



.button:focus
{
 background-color: #ddd;
}
#button
{
border-radius:10px;
height:35px;
}
#Date
{
border-radius:10px;
height:35px;

}

</style>
</head>
<body>
<div class="bg-img">
<form class="container" method="post" name="myform">  
    <h1>Client Details</h1>
 
    <label for="name"><b>Name</b></label>
    <input type="text" name="names" id="button" value="<%=session.getAttribute("name1")%>">
    <label for="age"><b>Age</b></label>
    <input type="text" name="ages" id="button" value="<%=session.getAttribute("age1")%>">
    <label for="email"><b>Email</b></label>
    <input type="text"  name="emails" id="button" value="<%=session.getAttribute("email1")%>"> 
 <label for="membership"><b>Membership</b></label> <br>
 <input type="text"  name="memberships" id="button" value="<%=session.getAttribute("memb1")%>"> 
<br> <br>
<label for="address"><b>Address</b></label> <br>
    <input type="text"  name="addresses" id="button" value="<%=session.getAttribute("address1")%>"> 
    
        <label for="dates"><b>Joining Date</b></label> <br>
    <input type='text' id='Date' name='Dates' value="<%=session.getAttribute("date1")%>"/>
</form>
</div>
</body>
</html>