<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"/>

</head>
<body>
<script src="./resources/js/fb-login.js"></script>


<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->
<div id="welcomeMsg" class="container-fluid" >
<h1>Welcome to the Good Luck Club.</h1>
</div>
	
<div class='container-fluid' id="notLoggedInContent">
<h1><small>Log in with Facebook, or sign in with your e-mail address and password.</small></h1>
	<div id="fbLoginDiv" class='container-fluid'>
		<fb:login-button ng-model="fbLoginButton" ng-click="fbLoginButtonClick()" scope="public_profile,email,user_birthday" onlogin="checkLoginState();" size='xlarge'>
		</fb:login-button>
	</div>
	<button class='btn' ng-model="testBtn" ng-click="fbLoginButtonClick()">test button</button>
	<div id="signInDiv" class='container-fluid'>
		<label for="signInEmail">E-Mail Address:</label><input type=text class='form-control' id='signInEmail' /> 
		<label for="signInPassword">Password:</label><input	type=password class='form-control' id='signInPassword' />
		<button type="button" class='btn' id='signInButton' >Sign In</button>
	</div>
</div>

<div id="status" class="container-fluid">
</div>

<div id="fbLoggedInMsg" class="container-fluid" style="display:none;">
You are logged in with facebook.
</div>


<div class="container-fluid" id="signUpForm" style="display:none;">
	<label for="signUpEmail">E-Mail Address:</label><input type=text class='form-control' id='signUpEmail' /> 
	<label for="signUpPassword">Password:</label><input	type=password class='form-control' id='signUpPassword' />
	<label for="signUpFirstName">First Name:</label><input	type=password class='form-control' id='signUpFirstName' />
	<label for="signUpLastName">Last Name:</label><input	type=password class='form-control' id='signUpLastName' />
	<label for="signUpDateOfBirth">Date of Birth:</label><input	type=password class='form-control' id='signUpDateOfBirth' />
	<button type="button" class='btn' id='signUpButton' >Sign In</button>
</div>

</body>
</html>