<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title> Sign in | up Form </title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
	<link rel="stylesheet" href="css\style1.css">

</head>

<body>
	<%
		if (request.getAttribute("msg") != null)
			out.print(request.getAttribute("msg") + "<br><br>");
	%>
	<!-----------Create Account------------->
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="signup">
				<h1>Create Account</h1>
				<br>
				<input type="text" placeholder="Name" name="name" />
				<input type="email" placeholder="Email" name="email"/>
				<input type="password" placeholder="Password" name="password"/>
				<button>Sign Up</button>
			</form>
		</div>


		<!---------------Sign In----------------->
		<div class="form-container sign-in-container">
			<form action="login">
				<h1>Sign in</h1>
				<br>
				<input type="email" placeholder="Email" name="email" />
				<input type="password" placeholder="Password" name = "password" />
				<a href="#">Forgot your password?</a>
				<button>Sign In</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Enter your personal details and start shopping!</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
	<script src="js/script.js"></script>
</body>
</html>