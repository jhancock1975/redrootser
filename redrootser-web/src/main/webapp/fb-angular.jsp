<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:include page="header.jsp"/>

<script src="./resources/js/bower_components/angular-route/angular-route.js"></script>
<script src="./resources/js/bower_components/angular-resource/angular-resource.js"></script>
<script src="./resources/js/bower_components/angular-facebook-utils/src/facebookUtils.js"></script>
<script src="./resources/js/app.js"></script>

</head>
<body ng-app="loginApp" ng-controller="loginAppCrtl">
<!-- <fb:login-button show-faces="false" max-rows="1" size="large"></fb:login-button> -->
<facebook-login-button></facebook-login-button>
<div id="fb-root"></div>
</body>
</html>