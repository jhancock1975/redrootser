/**
 * 
 */
(function() {
 
    var Customer = function() {
        this.firstName = "";
        this.lastName = "";
        this.email = "";
        this.dateOfBirth = "";
    };
 
   Customer.prototype = {
 
        //public methods here
 
    };
 
    var module = angular.module("customerModels");
    module.value("Customer", Customer);
 
}());