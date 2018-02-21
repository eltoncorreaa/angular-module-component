angular.module('elton-web').component('taskList', {
	templateUrl : 'views/task/list.html',	
	controller : function TaskListController($http, $scope, $location) {
		
		var SERVER = "http://localhost:9090";
		
		var that = this;
		this.listTask = [];
		
		this.onFormLoad = function() {
			 $http.get(SERVER + '/task').then(function(data) {
			      that.listTask = data.data;
			 }).catch(function(data) {
		    	console.log('Erro!');
		     });
		};
		this.onFormLoad();
		
		this.redirectCreate = function(){
			$location.path( '/task/create');
		};
		
		this.redirectEdit = function(idTask) {
			 $location.path( '/task/edit/'+idTask);
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
	}
});