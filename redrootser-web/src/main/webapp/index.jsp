<!DOCTYPE html>
<html>
<head>
<title>Example Restaurant.com</title>
<meta charset="UTF-8"/>
<meta name="description" content="Example of customizable rewards program site for restaurants." />

<!--  Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-resource.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">


</head>
<body>
<script src="./resources/js/fb-login.js"></script>

<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

<fb:login-button scope="public_profile,email,user_birthday" onlogin="checkLoginState();" size='xlarge'>
</fb:login-button>

<div id="status">
</div>

</body>
</html>