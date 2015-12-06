<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="error" type="java.util.Optional<String>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <#include "header.ftl"/>
    
    <script src="./js/bower_components/angular-route/angular-route.js"></script>
	<script src="./js/bower_components/angular-resource/angular-resource.js"></script>
	<script src="./js/bower_components/angular-facebook-utils/src/facebookUtils.js"></script>
	<script src="./js/app.js"></script>
</head>
<body ng-app="loginApp" ng-controller="loginAppCrtl">
<nav role="navigation" class="nav">
    <ul>
        <li><a href="../">Home</a></li>
    </ul>
</nav>

<p>You can use: demo@localhost / demo</p>

<div id='signInFormDiv' class='container'>

	<form role="form" action="./login" method="post" class="form-signin">

		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		
		<h2 class="form-signin-heading">Sign up for our rewards program</h2>
		<button class='btn btn-primary btn-lg'>Sign up</button>
		
		<h3 class="form-signin-heading"><i>or sign in</i></h3>
		<h2 class='form-signin-heading'>Sign in with your Facebook ID</h2>
		
		<div id='fbLoginDiv' class='container fbButtContainer'>
				<facebook-login-button id='fbLoginButton'></facebook-login-button>
		</div>
		
		<h2 class='form-signin-heading'>Or Sign in with User name and password</h2>
	
	    <div>
	        <input type="email" name="email" id="email" required autofocus class="form-control" placeholder="E-mail Address"/>
	    </div>
	    
	    <div>
	        <input type="password" name="password" id="password" required class="form-control" placeholder="Password" />
	    </div>
	    
	    <div class='checkbox'>
	        <label for="remember-me"><input type="checkbox" name="remember-me" id="remember-me" />click to stay logged in</label>
	    </div>
	    
	    <button class="btn btn-primary btn-lg" type="submit">Sign in</button>
	</form>
	
</div> <!-- signInFormDiv -->

<#if error.isPresent()>
<p>The email or password you have entered is invalid, try again.</p>
</#if>
<!--  need this for the facebook login button -->
<div id="fb-root"></div>
</body>
</html>