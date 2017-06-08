angular.module('cnv-web').component('companyCreate', {
	templateUrl : 'views/company/create.html',
	controller : function CompanyCreateController($http, $scope, $location) {
		
		var SERVER = "http://localhost:9090";
		this.companyDTO = {};
		
		this.redirectList = function() {
			window.location = "/web#!/company/list/";
			showMsgSucesso();
		};		
		
		this.create = function() {
			var that = this;
	    	$http.post(SERVER +'/company/', that.companyDTO).then(function(data){
	    		console.log("sucesso!");
	    		$scope.companyD = "xx";
	    		$location.path('/company/list/:1');
	    	}).catch(function(data) {
	    		handleExceptionsInForm(data.data);
	        });
	  	};
	}
});