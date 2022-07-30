<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Footer.css">
<meta charset="ISO-8859-1">
<title>Online Grocery Store</title>
</head>
<body>

<div class="body">
<header>
    <nav>
		<label class="logo">GroceryPro</label>
		<ul>
		   <li><a class="active" href="Home.html">Home</a></li>
		   <!--  <li>
			  <a href="#">Category
			  <i class="fas fa-caret-down"></i>
			  </a>
			  <ul>
				 <li><a href="#">Vegetables</a></li>
				 <li><a href="#">Fruits</a></li>
				 <li><a href="#">More</a></li>
			  </ul>
		   </li>-->
		   <li>
			  <a href="#">Deals
			  <i class="fas fa-caret-down"></i>
			  </a>
			  <ul>
				 <li><a href="#">Offers</a></li>
				 <li><a href="#">Promotion</a></li>
			  </ul>
		   </li>
		   <li><a href="#">Contact</a></li>
		   <li>
			<a href="#">Login
				<i class="fas fa-caret-down"></i>
			</a>
			<ul>
				<li><a href="#">User</a></li>
				<li><a href="#">Seller</a></li>
				<li><a href="Login.jsp">Advertiser</a></li>
				<li><a href="#">Admin</a></li>
				<li>
			</li>
			</ul>
			</li>
			<li><a href="#">Feedback</a></li>
		</ul>
	 </nav>
</header>
 <div align="center">
 
 
  <center><div class="container1" id="container">

	<div class="form-container1 sign-in-container1">
		<form action="${pageContext.request.contextPath}/LoginServlet" method="post">
			<h1>Advertiser Login</h1><br>
			
			<input type="text" placeholder="Enter E-mail" id="user" name="email" required>
			<input type="password" placeholder="Enter Password" id="pass" name="password" required><br>
			<input type="submit" class="logbtn1" value="Login" name="submit">
            <a class= "b" href="forgotPassword.jsp">Forgot Password</a><br></a>
            Don't have an account? <a href="Register.jsp">Sign up</a>
		</form>
	</div>
	<div class="overlay-container1">
		<div class="overlay">
			
			<div class="overlay-panel overlay-right">
				<h1>Hello!!!<br> 
				Welcome Back!!!</h1>
				<p>Enter your details to login</p>
				
			</div>
		</div>
	</div>
</div></center>
</div>


 <footer class="footer" style="margin-top: 100px;">
  	 <div class="container">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>company</h4>
  	 			<ul>
  	 				<li><a href="#">about us</a></li>
  	 				<li><a href="#">our services</a></li>
  	 				<li><a href="#">privacy policy</a></li>
  	 				<li><a href="#">affiliate program</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>get help</h4>
  	 			<ul>
  	 				<li><a href="#">FAQ</a></li>
  	 				<li><a href="#">shipping</a></li>
  	 				<li><a href="#">returns</a></li>
  	 				<li><a href="#">order status</a></li>
  	 				<li><a href="#">payment options</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>online shop</h4>
  	 			<ul>
  	 				<li><a href="#">watch</a></li>
  	 				<li><a href="#">bag</a></li>
  	 				<li><a href="#">shoes</a></li>
  	 				<li><a href="#">dress</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>About us</h4>
  	 				<p class="par">Welcome to Sri Lanka's first inspirational global experience in online grocery retailing. 
  	 				Be a part of this experience, redefining convenience and freshness.</p>
  	 			</div>
  	 		</div>
  	 	</div>
  </footer>
  </div>
</body>
</html>