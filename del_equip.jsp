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
  background-image: url("images/regs.jpg");

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
  margin-right:600px;
  margin-top:200px;
  max-width: 600px;
  padding: 15px;
  background-color:#e9967a;
  height:40%;
  border-radius:20px;
  
}

/* Full-width input fields */
input[type=text], input[type=email] {
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



.button:focus
{
 background-color: #ddd;
}
#button
{
border-radius:10px;
height:35px;
}
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
</style>
</head>
<body>
<div class="bg-img">
<form class="container" method="post" name="myform" action="del_equip">  
    <h1>Remove Equipment</h1>
    <label for="pno"><b>Enter id</b></label> <br>
    <input type="text" placeholder="Enter id.." name="ids" id="button"> <br> 
  <button type="submit" class="btn" onclick="form.action='del_equip';">Delete</button> <br> <br>
   </form>
</div>

</body>
</html>