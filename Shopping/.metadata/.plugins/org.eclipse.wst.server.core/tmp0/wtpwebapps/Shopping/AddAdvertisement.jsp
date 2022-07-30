<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/AddAdvertisement.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Footer.css">

<script src="Scripts/AddAdvertisement.js" type="text/javascript"></script>

<meta charset="ISO-8859-1">
<title>Online Grocery Store</title>
</head>
<body class="body">
<header>
    <nav>
		<label class="logo">GroceryPro</label>
		<ul>
		   <li><a class="active" href="#">Home</a></li>
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
				<li><a href="AdDetails.jsp">Advertisement</a></li>
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


<center><form action="<%= request.getContextPath() %>/AdvertisementServlet" method="post" enctype= "multipart/form-data">
  <div class="container1">
  <center>  <h1> Add Advertisement </h1> </center>
  <hr>
  <label> Name </label> <br>
    <input type="text" name="name" placeholder= "Enter your Name" size="15" required /> <br>

    <label> Email </label> <br>
    <input type="email" name="email" placeholder= "Enter your Email" size="15" required /> <br>

    <label>Contact Number</label><br>
    <input type="number" name="phone" placeholder= "Contact Number" size="15" required /> <br>

          <div> 
          <label >Advertisement type</label><br>
          <div>
              <select class= "select" name="type" required>
              <option value="gif">GIF</option>
              <option value="picture">Picture</option>
          </select>
          </div>
          </div>

          <label>Additional Information</label><br>
          <center><textarea cols="80" name="info" rows="5" placeholder="Additional Information" value="address" required></textarea></center>
          
          <center><label>Attach file</label>
          <input type="file" accept="image/png, image/gif, image/jpeg" name="file" class="input"><br></center>
       
<br><br>
         <label class="container2">Agreed to terms and conditions
            <input type="checkbox"  onclick="enable()" onclick="done ()" id="box" required >
            <span class="checkmark"></span>
          </label><br>


           <input type="submit" id="btn" class="registerbtn" value="Publish The Advertisement" ><br>

    </form>
    </center>
    
    
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
</body>
</html>