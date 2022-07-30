<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.registerdetails.registerbeen" %>
<%@ page import = "com.login.ProDetails" %>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/proDetails.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Footer.css">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Online Grocery Store</title>

</head>

<body>
<%String email=(String)session.getAttribute("email");
registerbeen register= new registerbeen();
ProDetails Advertiser= new ProDetails();
register= Advertiser.loadData(email);
%>


<div class="body">
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


<form class="login-form" action="adServlet" method=>

	<center><h1 class="ha1">Advertiser Profile</h1></center>
		
	<center><table>
    <tr><label for="fname"><td><b>First Name</b></td><td><%out.println(register.getfname());%></td></label></tr>
    <tr><label for="lname"><td><b>Last Name</b></td><td><%out.println(register.getlname());%></td></label></tr>
    <tr><label for="uname"><td><b>User Name</b></td><td><%out.println(register.getname());%></td></label></tr>
    <tr><label for="email"><td><b>Email</b></td><td><%out.println(register.getemail());%></td></label></tr>
    <tr><label for="phone"><td><b>Phone Number</b></td><td><%out.println(register.getPhone());%></td></label></tr>
	</table></center>

				<center><a href="resetPassword.jsp"><button type="submit" class="registerbtn">Edit</a></button>
				
				<a href="Deactivate.jsp"><button type="submit" class="registerbtn">Deactivate</a></button><br>
				
				<a href="AddAdvertisement.jsp"><button type="submit" class="registerbtn">Back</a></button></center>

</form>


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