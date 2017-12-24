angular.
  module('elton-web').
  config(['$locationProvider', '$routeProvider',
    function config($locationProvider, $routeProvider) {
      $locationProvider.hashPrefix('!');

      $routeProvider.
        when('/task/list', {
            template: '<task-list></task-list>'
        }).
        when('/task/create', {
            template: '<task-create></task-create>'
        }).
        when('/home', {
            template: '<home></home>'
        }).
        otherwise('/home');
    }
  ]);