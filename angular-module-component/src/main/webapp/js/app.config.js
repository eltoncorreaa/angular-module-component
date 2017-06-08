angular.
  module('cnv-web').
  config(['$locationProvider', '$routeProvider',
    function config($locationProvider, $routeProvider) {
      $locationProvider.hashPrefix('!');

      $routeProvider.
        when('/company/list', {
            template: '<company-list></company-list>'
        }).
        when('/company/create', {
            template: '<company-create></company-create>'
        }).
        otherwise('/company/list');
    }
  ]);