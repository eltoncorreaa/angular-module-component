angular.
  module('cnv-web').
  component('login', {
    templateUrl:"views/login.html",
    controller: function LoginController() {
    	_this = this;
    	
    	/*AuthenticationService.ClearCredentials();
    	 
        _this.login = function () {
            $scope.dataLoading = true;
            AuthenticationService.Login($scope.username, $scope.password, function(response) {
                if(response.success) {
                    AuthenticationService.SetCredentials($scope.username, $scope.password);
                    $location.path('/');
                } else {
                    $scope.error = response.message;
                    $scope.dataLoading = false;
                }
            });
        };
        
        _this.hide = function () {
            $scope.error = "";
        };*/
    }
  });