<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/homeA.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />
 
	
 
	<link rel="stylesheet" href="css/footer.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
 
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	<style>
	
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
#myVideo
{ width:100%;
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
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/1.jpg" style="width:100%">
  </div>
<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/2.jpg" style="width:100%">
 </div>
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/3.jpg" style="width:100%">
  </div>
</div>
  <div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<div>

 <%@ include file="offer_div.jsp" %>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 3 seconds
}
</script>
<video autoplay muted loop id="myVideo">
  <source src="videos/gyms.mp4" type="video/mp4">
  Your browser does not support HTML5 video.
</video>
<script>
var video = document.getElementById("myVideo");
var btn = document.getElementById("myBtn");

function myFunction() {
  if (video.paused) {
    video.play();
    btn.innerHTML = "Pause";
  } else {
    video.pause();
    btn.innerHTML = "Play";
  }
}
</script>
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