<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/style2.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<style type="text/css">

#content {
	margin:0%;
	float: left;
	width:75%;
	height:100%;
	 min-height:487px; 
	 margin-left:25%;
	background: white;
    position: fixed!important;
    
}
div.scroll {
    background-color:#FFFF;
    width:100%;
    height:487px;
    overflow:scroll;
}
</style>
<script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
<script type="text/javascript">
		$(document).ready(function(){
			
		    $("#link1").click(function(){
		   	$('#content').load("../DigyPromo/devicemaster.jsp");
		     //alert("Thanks for visiting!");
		   });  
		
		   $("#link2").click(function(){
		   	$('#content').load('../DigyPromo/devicepreference.jsp');
		     //alert("Thanks for visiting!");
		   });
		
		   $("#link3").click(function(){
			   	$('#content').load('../DigyPromo/devicemp.jsp');
			     //alert("Thanks for visiting!");
			   });
			
		   $("#link6").click(function(){
			   	$('#content').load('../DigyPromo/sideframe.jsp');
			     //alert("Thanks for visiting!");
			   });
		   
		   $("#link5").click(function(){
			   	$('#content').load('../DigyPromo/deviceSP.jsp');
			     //alert("Thanks for visiting!");
			   });
		   
		   $("#link7").click(function(){
			   	$('#content').load('../DigyPromo/messagedevice.jsp');
			     //alert("Thanks for visiting!");
			   });
		   
		   $("#link8").click(function(){
			   	$('#content').load('../DigyPromo/messagemaster.jsp');
			     //alert("Thanks for visiting!");
			   });
		   
		   $("#link9").click(function(){
			   	$('#content').load('../DigyPromo/feederdevice.jsp');
			     //alert("Thanks for visiting!");
			   });
		   
		   $("#link10").click(function(){
			   	$('#content').load('../DigyPromo/feedermaster.jsp');
			     //alert("Thanks for visiting!");
			   });
		   
		});
</script>
</head>
<body>

	<div style="margin-left: 0%">
		<div class="w3-container w3-teal">
			<div style="text-align: right"><a href="LogoutServlet">Logout</a></div>
			<h1>DIGY PROMO 
			<%-- <%Object value = request.getAttribute("username");%>
             <%=value%> --%></h1>
		</div>
	</div>
	<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 25%">
		<h3 class="w3-bar-item">Menu</h3>
		<a href="#" class="w3-bar-item w3-button" id="link1">DEVICE</a> 
		<a href="#" class="w3-bar-item w3-button" id="link2">DEVICE PREFERENCES</a> 
		
		<label class="dropdown-btn"><b>MASTER PANEL </b>
   		 <i class="fa fa-caret-down"></i>
  		</label>
  		<div class="dropdown-container">
   
  		 <ul>
    		<li><a href="#" id="link3">Device Main Panel</a></li>
    		<li><a href="#" id="link4">Master Main Panel</a></li>
   		</ul> 
    
  		</div>
		<label class="dropdown-btn"><b>SIDE PANEL </b>
    <i class="fa fa-caret-down"></i>
  </label>
  <div class="dropdown-container">
   <ul>
    <li><a href="#" id="link5">Device Side Panel</a></li>
    <li><a href="#" id="link6">Master Side Panel</a></li>
   </ul> 
  </div>
  	
  	<label class="dropdown-btn"><b>MESSAGES </b>
   		 <i class="fa fa-caret-down"></i>
  	</label>
  		<div class="dropdown-container"> 
  		 <ul>
    		<li><a href="#" id="link7">Device Message Panel</a></li>
    		<li><a href="#" id="link8">Master Message Panel</a></li>
   		</ul> 
  		</div>
  		
  		<label class="dropdown-btn"><b>FEEDERS </b>
   		 <i class="fa fa-caret-down"></i>
  	</label>
  		<div class="dropdown-container"> 
  		 <ul>
    		<li><a href="#" id="link9">Device Feeder Panel</a></li>
    		<li><a href="#" id="link10">Master Feeder Panel</a></li>
   		</ul> 
  		</div>
		<a href="#"  class="w3-bar-item w3-button">USER</a>
		<a href="#"  class="w3-bar-item w3-button">ROLES</a>
		<a href="#"  class="w3-bar-item w3-button">ROLE ACTION LINKAGE</a>
		</div>
	<div id="content">
 <!-- <div style="height:90%;min-height: 487px;width:100%;border:solid 2px white;overflow:scroll;overflow-x:scroll;overflow-y:scroll;">
 </div> -->
</div>
<script>

var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}</script>
</body>
</html>