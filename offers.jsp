<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
  background-image: url("images/offer4.jpg");

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
  margin-left: 10px;
  margin-right:600px;
  margin-top:0px;
  max-width: 400px;
  padding: 10px;
  background-color:#ADD8E6;
  height:100%;
  border-radius:30px;
  
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
#button3
{
border-radius:10px;
height:35px;
}

</style>
</head>
<body>
 <div class="bg-img">

  <form action="offers" class="container" method="post">  
    <h1>New Offer</h1>
    <label for="offer"><b>Offer</b></label>
    <input type="text" name="names" id="button" placeholder="Enter offer">
<br> <br>
<label for="valid_from"><b>Valid_from</b></label>
<input type="date" id="start" name="validf"
       value="2019-11-28"
       min="2019-01-01" max="2022-12-31">
    <br> <br>
    <label for="valid_upto"><b>Valid_upto</b></label>
   <input type="date" id="start" name="validupto"
       value="2019-11-28"
       min="2019-01-01" max="2022-12-31">
    <br> 
      <label for="description"><b>Description</b></label> <br>
   <textarea name="description" id="button2" placeholder="Describe" style="height:100px;  background:#f1f1f1;"> </textarea>
   <br> <br>
    <label for="file"><b>Add Photo</b></label> <br> 
     <input type="file" name="myFile" id="button3" placeholder="Add photo" multiple>
     <br> <br>
    <button type="submit" class="btn">Submit !</button>
   
  </form>
</div>


</body>
</html>