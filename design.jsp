<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.css" type="text/css">		
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/Common.js"></script>
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  background-image: url("images/login2.jpg");

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
  padding: 10px;
  background-color:none;
  height:100%;
  
}

/* Full-width input fields */
input[type=text], input[type=password]{
  width: 100%;
  padding: 10px;
  margin: 5px 0 22px 0;
  border: none;
  background:#f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color:black;
  color:white;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius:10px;
  height:35px;
   font-family:"Comic Sans MS", cursive, sans-serif;
   font-size:20px;
  
}

.btn:hover {
  opacity: 1;
}
.button:focus
{
 background-color:#ddd;
}
#button
{
border-radius:10px;
height:35px;
width:260px;
}
#abc
{
text-align:center;
}
.container {
  position: absolute;
  right: 0;
  margin-left: 20px;
  margin-right:500px;
  margin-top:150px;
  max-width: 400px;
  padding: 10px;
  background-color:white;
  height:60%;
  border-radius:30px;
  
}
#a
{
color:black;
}
legend
{ margin-left:130px;
}
.btn {
  background-color:black;
  color:white;
  border: none;
  cursor: pointer;
  width: 200px;
  opacity: 0.9;
  border-radius:10px;
  height:35px;
   font-family:"Comic Sans MS", cursive, sans-serif;
   font-size:20px;
   margin-left:120px;
  
}

.btn:hover {
  opacity: 1;
}
#img
{ margin-left:147px;
}

</style>
<link rel="stylesheet" href="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.css" type="text/css">		
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/Common.js"></script>
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.js"></script>

</head>
<body>
 <div class="bg-img">

  <form action="LoginController" class="container" method="post" name="myform" onsubmit="return validateform()" >  

  <img src="images/icon.jpg" width="85px" height="85px" id="img">
    <h1 id="abc">LOG IN</h1>
  
    <label for="uname"><b>Username</b></label>
    
     <i class="fa fa-user icon"></i>
    <input type="text" name="uname" id="button" placeholder="Username..."> 
    <label for="password"><b>Password</b></label> 
     <i class="fa fa-key icon"></i>
    <input type="password" name="password" id="button" placeholder="Password..."> 
  <button type="submit" class="btn">LogIn !</button>

  </form>
</div>

</body>
</html>