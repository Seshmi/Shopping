<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Deactivate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Footer.css">

<script src="Scripts/Deactivate.js" type="text/javascript"></script>
<meta charset="ISO-8859-1">
<title>Online Grocery Store</title>
</head>
<body>

<body class="body">
<header>
    <nav>
		<label class="logo">GroceryPro</label>
		<ul>
		   <li><a class="active" href="Home.html">Home</a></li>
		   <!--<li>
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
				 <li><a href="Promotion.jsp">Promotion</a></li>
			  </ul>
		   </li>
		   
		   <li>
			<a href="#">My Account
				<i class="fas fa-caret-down"></i>
			</a>
			<ul>
				<li><a href="AddAdvertisement.jsp">Advertisement</a></li>
				<li><a href="proDetails.jsp">Profile</a></li>
				<li><a href="Home.html">Log Out</a></li>
				<li>
			</li>
			</ul>
			</li>
			
			 <li><a href="#">Contact</a></li>
			 
			<li><a href="#">Feedback</a></li>
		</ul>
	 </nav>
</header>

<div class="login-form">
<center><form method="POST" action="${pageContext.request.contextPath}/DeactivateServlet" >
				
				<!-- <center><h1 class="ha1">Deactivate Your Account</h1></center> -->
				
				<p>Deactivating your account will disable your profile and remove all your data from our database.<br>
				 Not only that the things you shared also will delete from the database</p><br>
				
				
				<div class="txtb">
					<center><label for="email"><b>Email:</b></label><br></center><br>
					<center><input type="email" placeholder="Enter Your Current E-mail" name="email" id="email" required><br></center>
				</div><br>
		
				<div class="txtb">
				<center><label for="password"><b>Password:</b></label><br></center><br>
				<center><input type="password" placeholder="Enter Your New Password" id="password" name="password" pattern = ".{8,}"required></center>
				</div><br>

       		 <label class="container">Are you sure you want to delete your account?
  			<input type="checkbox"  onclick="enable()"  id="box" required >
  			<span class="checkmark"></span>
			</label><br>
				
				
				<center><input type="submit" class="logbtn" value="Deactivate" id="btn" name="submit"><br><br>
				
</form></center>

				<a href="proDetails.jsp"><input type="submit" class="logbtn" value="cancel" name="submit"></a></center>

</div>


  <footer class="footer" style="margin-top: 800px;">
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