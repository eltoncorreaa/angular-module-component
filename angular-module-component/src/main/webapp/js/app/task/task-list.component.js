angular.module('dellas-web').component('taskList', {
	templateUrl : 'views/task/list.html',	
	controller : function TaskListController($http, $scope, $location) {
		
		var SERVER = "http://localhost:9090";
		
		var that = this;
		this.listTask = [];
		this.recoveredTask;
		this.listErrorsPageUpdate = [];
		this.listMsgSucessPageUpdate;
		
		this.redirectCreate = function(){
			$location.path( '/task/create')
		};
		
		this.updateTask = function() {
	    	$http.put(SERVER +'/task/', that.recoveredTask).then(function(data){
	    		that.onFormLoad();
	    		that.listMsgSucessPageUpdate = "Successful Updated!";
	    		that.clearWhenSucess();
	    	}).catch(function(data) {
	    		that.listErrorsPageUpdate = data.data.error;
	    		that.clearWhenError();
	        });
	  	};

		 this.configurarModalEdicao = function(idTask) {
			 $http.get(SERVER + '/task/' + idTask).then(function(data) {
				 that.recoveredTask = data.data;
				 that.clearWhenSucess();
				 that.clearWhenError();
				 $("#modalEditTask").modal("show");
			 });
		 };
		 
		this.removeTask = function(id) {
			$http.delete(SERVER + '/task/' + id).then(function(data){
				that.onFormLoad();			
			});		
	  	};
	  	
		this.findByFilter = function() {
			var teste = {params:{"name": "name"}};
			$http.get(SERVER + '/task?' + teste.params).then(function(data) {
			      that.listTask = data.data;
			 }).catch(function(data) {
		    	console.log('Erro!');
		     });
		};
		
		this.onFormLoad = function() {
			 $http.get(SERVER + '/task').then(function(data) {
			      that.listTask = data.data;
			 }).catch(function(data) {
		    	console.log('Erro!');
		     });
		};
		this.onFormLoad();
		
		this.clearWhenSucess = function(){
	  		that.listErrorsPageUpdate = [];
	  	};
	  	
	  	this.clearWhenError = function(){
	  		that.listMsgSucessPageUpdate = "";
	  	};
	}
});