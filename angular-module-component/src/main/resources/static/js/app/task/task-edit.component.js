angular.module('elton-web').component('taskEdit', {
	templateUrl : 'views/task/edit.html',	
	controller : function TaskEditController($http, $scope, $location) {
		
		var SERVER = "http://localhost:9090";
		
		var that = this;
		that.task;
		this.listErrorsPageUpdate = [];
		this.listMsgSucessPageUpdate;
				
		this.onFormLoad = function() {
			 $http.get(SERVER + '/task/'+ $scope.$root.$$childHead.$id).then(function(data) {
			      that.task = data.data;
			 }).catch(function(data) {
		    	console.log('Erro!');
		     });
		};
		this.onFormLoad();
		
		this.updateTask = function() {
	    	$http.put(SERVER +'/task/', that.task).then(function(data){
	    		that.listMsgSucessPageUpdate = "Successful Updated!";
	    		that.clearWhenSucess();
	    	}).catch(function(data) {
	    		that.listErrorsPageUpdate = data.data.error;
	    		that.clearWhenError();
	        });
	  	};
	  	
	  	this.redirectList = function(){
			$location.path( '/task/list')
		};
	  	
	  	this.clearWhenSucess = function(){
	  		that.listErrorsPageUpdate = [];
	  	};
	  	
	  	this.clearWhenError = function(){
	  		that.listMsgSucessPageUpdate = "";
	  	};
	}
});