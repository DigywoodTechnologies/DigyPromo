<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${contextPath}/css/style2.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>DEVICE MASTER</title>
<style>
.after-box {
	margin-left: 0%;
	background: white;
	color: black;
	height: 30px;
	width: 100%;
}

.result-box {
	margin-left: 0%;
	background: white;
	color: black;
	height: 30px;
	width: 100%;
}
</style>
</head>
<body>

	<div class="after-box">
		<table border="0" width="100%" bgcolor="yellow">
			<tr>
				<th>SCREENID:SCDEV01</th>
				<th>DEVICE MASTER</th>
				<th>USER:</th>
				<th>Date:<span id="date"></span></th>
			</tr>
		</table>
	</div>
	<div class="form-style-8">
		<form>
			<table>
				<tr>
					<td><b>ORG ID</b> <input type="text" name="orgid" id="orgid" /></td>

					<td><b> Device ID </b> <input type="text" name="deviceid" /></td>
				</tr>
				<tr>
					<td><b>Area </b> <input type="text" name="area" /></td>

					<td><b>City </b> <input type="text" name="city" /></td>
				</tr>
				<tr>
					<td><b>Device Status</b> <input type="text"
						name="devicestatus" /></td>
				</tr>
			</table>
			<table border="0" width="90%">
				<tr>
					<th><input type="button" id="btnsearch" value="SEARCH" /></th>
					<th><input type="button" value="CANCEL" /></th>
				</tr>
			</table>
		</form>
	</div>
	<div align="right">
		<table>
			<tr>
				<td><input type="button"
					style="width: 1150px; font-size: 13pt; background-color: #34CACA; color: white; padding: 2px"
					align="middle" id="addbtn" value="ADD NEW" /></td>
			</tr>
		</table>
	</div>
	<div class="result-box">
		<table border="2" width="100%">
			<tr>
				<th>DEVICE ID</th>
				<th>NAME</th>
				<th>AREA</th>
				<th>CITY</th>
				<th>STATUS</th>
			</tr>

			<tr align="center">
				<td>1234</td>
				<td>digy</td>
				<td>mariyappanapalya</td>
				<td>bangalore</td>
				<td>active</td>
			</tr>

			<!-- <tr align="center">
				<td>4321</td>
				<td>promo</td>
				<td>rtnagar</td>
				<td>hyderbad</td>
				<td>inctive</td>
			</tr> -->
		</table>
	</div>

	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>



			<div class="form-style-9">
				<h2>ADD NEW DEVICE</h2>
				<form>
					<table>
						<tr>
							<td>Device id <input type="text" name="deviceid" /></td>

							<td>Name <input type="text" name="name" /></td>
						</tr>
						<tr>
							<td>Device Type <input type="text" name="devicetype" /></td>

							<td>Location <input type="text" name="location" /></td>
						</tr>
						<tr>
							<td>Area <input type="text" name="area" /></td>

							<td>City <input type="text" name="city" /></td>
						</tr>
						<tr>
							<td>District <input type="text" name="district" /></td>

							<td>State <input type="text" name="state" /></td>
						</tr>
						<tr>
							<td>Country <input type="text" name="country" /></td>

							<td>Unit Office <input type="text" name="unitoffice" /></td>
						</tr>
						<tr>
							<td>Device Category <input type="text" name="devicecate" /></td>


							<td>SubCategory <input type="text" name="subcate" /></td>
						</tr>
					</table>

					<td><input type="button" value="Save" /></td>

					<td><input type="button" value="Cancel" /></td>

				</form>
			</div>
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

				n = new Date();
				y = n.getFullYear();
				m = n.getMonth() + 1;
				d = n.getDate();
				document.getElementById("date").innerHTML = m + "/" + d + "/"
						+ y;
			</script>
			<!-- Latest compiled and minified JavaScript -->
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
				integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
				crossorigin="anonymous"></script>


		</div>

	</div>




</body>
</html>