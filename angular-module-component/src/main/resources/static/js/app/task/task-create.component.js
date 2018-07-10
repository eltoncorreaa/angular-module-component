angular.module('elton-web').component('taskCreate', {
	templateUrl : 'views/task/create.html',	
	controller : function TaskCreateController($http, $scope, $location) {
		
		var SERVER = "http://localhost:9090";
		
		var that = this;
		that.task = {};
		that.listErrorsPageInclusion = [];
		that.msgSucessPageInclusion;
				
		this.create = function() {			
	    	$http.post(SERVER +'/task/', that.task).then(function(data){
	    		that.msgSucessPageInclusion = "Successful inclusion!";
	    		that.clearWhenSucess();			
	    	}).catch(function(data) {
	    		that.listErrorsPageInclusion = data.data.error;
	    		that.clearWhenError();
	        });
	  	};
	  	
	  	this.clearWhenSucess = function(){
	  		that.task = {};	  	
	  		that.listErrorsPageInclusion = [];
	  	};
	  	
	  	this.clearWhenError = function(){
	  		that.msgSucessPageInclusion = "";
	  	};
	  	
	  	this.redirectList = function(){
			$location.path( '/task/list')
		};
	}
});