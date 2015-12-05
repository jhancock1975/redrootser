/**
 * using code from:
 * http://davidchang.github.io/angular-facebook-utils/#/
 */
var loginApp = angular.module('loginApp', ['facebookUtils', 'ngRoute', 'ngResource'])
.constant('facebookConfigSettings', {
	'appID' : '323798774457174'
});

function toCustomer(response){
	return {"firstName": response.first_name,
			"lastName": response.last_name,
			"dateOfBirth": toSqlDateStr(response.birthday),
			"email": response.email
			};
}

loginApp.controller('loginAppCrtl', function($scope, $rootScope, $http, $resource, facebookUser) {
	
	console.log("app controller");
	$rootScope.$on('fbLoginSuccess', function(name, response) {
		facebookUser.then(function(user) {
			user.api('/me?fields=id,first_name,last_name, birthday,email,gender,locale').then(function(response) {
				
				$rootScope.loggedInUser = response;
				
				var customerRes =  $resource('http://rootser.com:9191/redrootser-db-1.0.0-BUILD-SNAPSHOT/customers/:customerId',
						{customerId:'@id'}, {stripTrailingSlashes: false});
				var customer = toCustomer(response);
				customerRes.save(customer);
				console.log(customer);
			});
		});
	});

	$rootScope.$on('fbLogoutSuccess', function() {
		$scope.$apply(function() {
			$rootScope.loggedInUser = {};
		});
	});
	
	
});
