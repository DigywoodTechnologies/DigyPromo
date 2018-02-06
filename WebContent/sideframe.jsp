<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<link href="${contextPath}/css/style2.css" rel="stylesheet">

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
.form-style-8 input[type="text"],
    .form-style-8 select 
{
  box-sizing: round-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    border: none;
    border-bottom: 1px solid #ddd;
    background: transparent;
    margin-top: -30px;
    font: 16px Arial,'Roboto Medium', arial, sans;
    height: 35px;
      margin-right:65px; padding:8px;  width:60%; 
} 
</style>

<title>sidepanel</title>
</head>
<body>
<div class="after-box">
<table border="0" width="100%" bgcolor="yellow">
<tr><th>SCREENID:SCDEV01</th><th>MASTER SIDEPANEL:</th><th>USER:</th> <th>Date:<span id="date"></span></th></tr> </table></div>
<div class="form-style-8">
<form action="" method="post">
<table>
 <tr>
   <td>
   <label><b>SPItem ID</b></label>
 <select  style="">
 <option value="orgid">orgid</option>
  <option value="deviceid">devid</option>
</select>
</td>
<td>
 <label><b>SPItem Name</b></label>
<select style="">
  <option value="deviceid">devid</option>
  </select>
  </td>
  </tr>
  <tr><td><b>Status</b>
    <input type="text" name="devicestatus"  /></td>
    </tr>
</table>
   <input type="button"  id="btnfetch" value="FETCH"   style="margin-left:85px;"/>
   <input type="button" value="CANCEL" style="margin-left:65px;" />
</form>
</div>
   <div  align="right">
 <table >  <tr><td> <input  type="button" style="width:150px;font-size:13pt;background-color:#34CACA;color:white;padding:2px" align="middle" id="addbtn" value="ADD NEW" /></td></tr></table>
     </div>
     <div class="result-box">
 <table border="2" width="100%"  >  
<tr><th>key</th><th>Ref</th><th>Seq.NO</th><th>Name</th><th>File</th>
<th>STATUS</th></tr>

<tr align="center">
<td>1</td> 
<td>digy</td> 
<td>dev123</td> 
<td>digy</td>
<td>example.doc</td>
<td>active</td> </tr> 

<tr align="center">
<td>2</td> 
<td>promo</td> 
<td>dev1234</td> 
<td>promo</td>
<td>example1.doc</td>
<td>inactive</td> </tr>  </tr>
 </table></div>
 <div id="myModal" class="modal">
 <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
   
    

  <div class="form-style-9">
  <h2>ADD NEW PANEL</h2>
  <form>
  <table>
  <tr><td>SP ITEM id
    <input type="text" name="deviceid" /></td>
    
    <td>SP ITEM NAME
    <input type="text" name="spitemname"  /></td>
    </tr>
    <tr><td>SP ITEM IMAGE
    <input type="text" name="spitemimage"  /></td>
    
     <td>SP ITEM REMARKS
    <input type="text" name="spitemremarks"  /></td>
    </tr>
     <tr><td>SP ITEM STATUS
    <input type="text" name="spitemstatus"  /></td>
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