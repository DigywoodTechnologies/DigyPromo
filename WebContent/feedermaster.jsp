<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${contextPath}/css/style2.css" rel="stylesheet">
 <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>device master panel</title>
 <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("addbtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
</script>    
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style>
 .form-style-8{
     font-family: 'Roboto Medium', monotype, sans;
     width:100%;
     height:180px;
     align:right;
    padding: 30px;
    background: #FFFFFF;
    margin:4px auto;
   margin-left:0.2%;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);
}
</style>
</head>
<body>
<div class="after-box">
<table border="0" width="100%" bgcolor="yellow">
<tr><th>SCREENID:SCDEV01</th><th>FEEDER MASTER PANEL</th><th>USER:</th> <th>Date:<span id="date"></span></th></tr> </table></div>
 <div class="form-style-8">
  <form>
  <table>
  <tr>
   <td><b>MASTER_FEEDID</b>
   <input type="text" name="mfid" id="mmid"/></td>
   
   <td><b>MASTER FEED</b> 
   <input type="text" name="mfeed" /></td> </tr>
    <tr>
    <td><b>MF_STATUS</b> 
    <input type="text" name="mfeedstatus"  /></td>
    
    
    </tr>
   </table>
  <input type="button"  id="btnsearch" value="SEARCH" style="margin-left:85px;"/>
    <input type="button" value="CANCEL" style="margin-left:65px;"/>
  </form>
  </div>
      <div  align="right">
 <table >  <tr><td> <input  type="button" style="width:150px;font-size:13pt;background-color:#34CACA;color:white;padding:2px" align="middle" id="addbtn" value="ADD NEW" /></td></tr></table>
     </div>
 
  <div class="result-box">
 <table border="2" width="100%"  >  
<tr><th>MFeed_ID</th><th>Feed Text</th><th>Status</th>
<tr align="center">
     <td>1</td> 
     <td>sp123</td> 
     
       <td>active</td></tr>

<tr align="center">
<td>2</td> 
<td>sp456</td> 

<td>inactive</td></tr>
</table> 
</div>


<div id="myModal" class="modal">
 <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
   
    

  <div class="form-style-9">
  <h2>ADD NEW FEED</h2>
  <form>
  <table>
  <tr><td>ORGA ID:
    <input type="text" name="orgid" /></td>
    
    <td>FEED ID:
    <input type="text" name="mid"  /></td>
    </tr>
    <tr>
    <td>FEED TEXT:
    <input type="text" name="mid"  /></td>
    
    
    
    <td>STATUS:
    <input type="text" name="status"  /></td>
    </tr>
    <tr>
    <td>REMARKS:
    <input type="text" name="remarks"  /></td>
    
    </tr>
    
    </table>
    
     <td><input type="button" value="Save" /></td>
    
      <td><input type="button" value="Cancel" /></td>
  
  </form>
  </div>   
   
        
  </div>

</div>

</body>
</html>