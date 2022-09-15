<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.css" type="text/css">		
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/Common.js"></script>
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.js"></script>


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
  background-image: url("images/fe.jpg");

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
  background-color:#cfebfd;
  height:75%;
  margin-top:90px;
  border-radius:35px;
  
}

/* Full-width input fields */
input[type=text], input[type=email],input[type=date] {
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
 background-color: #ddd;
}
#button
{
border-radius:10px;
height:35px;
}
#button1
{
border-radius:10px;
height:35px;
width:100%;
background-color:#f1f1f1;
	
}
#button2
{ border-radius:10px;
width:100%;
}
#option
{ font-family:"Comic Sans MS", cursive, sans-serif;
background-color:#f1f1f1;
}
#date
{
border-radius:10px;
height:35px;

}

</style>
<link rel="stylesheet" href="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.css" type="text/css">		
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/Common.js"></script>
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.js"></script>

</head>
<body>


 <div class="bg-img">

  <form action="feedback" class="container" method="post" name="myform" onsubmit="return validateform()" >  
    <h1>SEND FEEDBACK</h1>
    <label for="name"><b>Name</b></label>
    <input type="text" name="names" id="button" placeholder="Enter name" required>
<label for="contactno"><b>Contact Number</b></label>
    <input type="text" name="contact" id="button" placeholder="Enter Contact" value="+91" maxlength="13" minlength="10" required>
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="emails" id="button" required>

<br> 
<label for="comment"><b>Comment</b></label> <br>
    <textarea name="comments" id="button2" placeholder="Add comment" style="height:50px;  background:#f1f1f1;"> </textarea>
    <br> <br>
  
 
  <button type="submit" class="btn">Submit !</button>
   
  </form>
</div>




</body>
</html>