<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>DIGY PROMO</title>
<meta charset="utf-8">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body>


	<div class="login-form">
		<h1>LOGIN IN</h1>

		<form action="LoginServlet" method="post" onsubmit="return validate()">
			<li><input type="text" class="text" value="User Name"
				name="username" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'User Name';}"><a
				href="#" class=" icon user"></a></li>
			<li><input type="password" value="Password" name="password"
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Password';}"><a
				href="#" class=" icon lock"></a></li>

			<div class="forgot">
				<h4>
					<input type="submit" onclick="myFunction()" value="Sign In">
					<a href="#"></a> <input type="submit" onclick="myFunction()"
						value="cancel"> <a href="#"></a>
				</h4>
			</div>
		</form>
	</div>


	</div>




</body>
</html>