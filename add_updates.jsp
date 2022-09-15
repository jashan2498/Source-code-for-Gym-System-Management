<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
.row
{
margin-top:135px;}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
  border-radius:50%;
  opacity:0.7;
}
div.r {
  width: 320px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  height:40px;
}
div.column {
  padding: 15px;
}
#para
{
font-family:"Comic Sans MS", cursive, sans-serif;
font-size:25px;
}
.column {
  position: relative;
  width: 33.3%;
}

.image {
  display: block;
  width: 100%;
  height: auto;
}
.bg-img {
  /* The image used */


  height:100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
body
{ background-image: url("images/updates.jpg");
height:100%;

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
<div class="row">
  <div class="column">
   <a href="update_equip.jsp"><img src="images/eqquipp.png"  style="width:70%; height:300px"> </a>
      
   <div class="r"><p id="para">Update Equipments ! </p></div>
  </div>
  <div class="column">
  <a href="update_trainer.jsp"> <img src="images/trainers.png" style="width:70%; height:300px"> </a>
    
     <div class="r"><p id="para">Update Trainer !</p></div>
  </div>
  <div class="column">
   <a href="del_offer.jsp"> <img src="images/offers.png" style="width:70%; height:300px"> </a>
    
     <div class="r"><p id="para">Update Offer !</p></div>
  </div>
</div>
</div>
</body>
</html>