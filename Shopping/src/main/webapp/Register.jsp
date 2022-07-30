<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Register.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Footer.css">
<script src="Scripts/Register.js" type="text/javascript"></script>
<script src="Scripts/Deactivate.js" type="text/javascript"></script>
<title>Online Grocery Store</title>
</head>
<body>

<div class="body">

<header>
    <nav>
		<label class="logo">GroceryPro</label>
		<ul>
		   <li><a class="active" href="Home.html">Home</a></li>
		   <li>
			  <a href="#">Category
			  <i class="fas fa-caret-down"></i>
			  </a>
			  <ul>
				 <li><a href="#">Vegetables</a></li>
				 <li><a href="#">Fruits</a></li>
				 <li><a href="#">More</a></li>
			  </ul>
		   </li>
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
 <div>  
  
  <div class="container1">

    <form id="signup" name="retype" action="registerservlet" method="post" onsubmit="return cal()" class="register-form" >

        <div class="header">
        
            <center><h3>Sign Up</h3></center>
            
        <center> <p>Fill out this form to Register</p></center>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
            <input type="text" placeholder="First Name" name="fname" />

            <input type="text" placeholder="Last Name" name="lname" />

            <input type="text" placeholder="User Name" name="name" />

            <input type="text" placeholder="Email" name="email" required/>
        
            <input type="password" placeholder="Password" name="password" id="password" pattern = ".{8,}" required/>

            <input type="password" placeholder="Confirm Password" name="password1" id="repassword" pattern = ".{8,}"  />

            <input type="text" placeholder="Phone Number" name="phone" />
            
            <center><div class="checkbox">
            <input type="checkbox"  onclick="enable()"  id="box" required >
                <!-- <input name="check" id="check" value="1" type="checkbox" /> --><label class="terms">Agreed to terms and conditions</label>
            </div></center>
            
           <!--  <a id="submit" href="#">SIGN UP</a><br> -->
            <input type="submit" id="submit" value="Register" class="btn"><br>

        <center><label class="terms">Already have an account? <a href="Login.jsp">Login</a></label></center>
        
        </div>

    </form>

</div>


  
  
  
 </div>
  <footer class="footer" style="margin-top: 250px;">
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