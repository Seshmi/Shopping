<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.addEvent.Event" %>
<%@ page import = "com.event.EventDetails" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/AdDetails.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Footer.css">
<meta charset="ISO-8859-1">

<title>Online Grocery Store</title>

<script src="#" type="text/javascript"></script>
</head>
<body class="body">

<header>
    <nav>
		<label class="logo">GroceryPro</label>
		<ul>
		   <li><a class="active" href="Home.html">Home</a></li>
		   <!-- <li>
			  <a href="#">Category
			  <i class="fas fa-caret-down"></i>
			  </a>
			  <ul>
				 <li><a href="#">Vegetables</a></li>
				 <li><a href="#">Fruits</a></li>
				 <li><a href="#">More</a></li>
			  </ul>
		   </li> -->
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

<%
String email=(String)session.getAttribute("email");
Event advertisement= new Event();
EventDetails Advertiser= new EventDetails();
advertisement= Advertiser.loadData(email);
%>


<form  class="login-form">

	<center><h1 class="ha1">Advertisement Details</h1></center>
		<%String a=advertisement.getfile(); %>
	<center><table>
    <tr><label for="name"><td><b>Name</b></td><td><%out.println(advertisement.getname());%></td></label></tr>
    <tr><label for="email"><td><b>Email</b></td><td><%out.println(advertisement.getemail());%></td></label></tr>
    <tr><label for="phone"><td><b>Contact Number</b></td><td><%out.println(advertisement.getphone());%></td></label></tr>
    <tr><label for="type"><td><b>Advertisement type</b></td><td><%out.println(advertisement.gettype());%></td></label></tr>
   	<tr><label for="file"><td><b>File</b></td><td><img src="Images/<%out.println(a);%>"width="50px" height="50px"></td></label></tr>
    <tr><label for="file"><td><b>File Name</b></td><td><%out.println(a);%></td></label></tr>
   
	</table></center>
	
	<br><br>
	<center><h3>Enter to search all the advertisements.</h3></center><br>
	<center><a href="searchAd.jsp"><button type="submit" class="enter"  name="submit">Enter</a></button></center><br><br>
	
	<center> <a href="AddAdvertisement.jsp"><input type="submit" class="enter" value="Back" name="back"></a></center>
	
</form>


<footer class="footer" style="margin-top: 900px;">
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
