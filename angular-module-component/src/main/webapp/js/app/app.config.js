angular.
  module('cnv-web').
  config(['$locationProvider', '$routeProvider',
    function config($locationProvider, $routeProvider) {
      $locationProvider.hashPrefix('!');

      $routeProvider.
        when('/login', {
          template: '<login></login>'
        }).
        when('/admin/historico-crm', {
          template: '<historico-crm></historico-crm>'
        }).
        when('/admin/integracao-star-sec', {
          template: '<integracao-star-sec></integracao-star-sec>'
        }).        
        otherwise('/login');
    }
  ]);