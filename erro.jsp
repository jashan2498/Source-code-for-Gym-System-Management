<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#para
{
font-size:40px;
 font-family:"Comic Sans MS", cursive, sans-serif;
 text-align:center;
 margin-top:150px;
 color:white;
}
#img
{
height:350px;
width:350px;
margin-left:570px;

}
.bg-img {
  /* The image used */
  background-image: url("images/error.jpg");
margin-top:-150px;
  min-height:700px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
</style>
</head>
<body>
<div class="bg-img">

<p id="para">Wrong username or password !</p>
<br> <br> <br>
<img src="images/er.png" id="img">

</div>
</body>
</html>