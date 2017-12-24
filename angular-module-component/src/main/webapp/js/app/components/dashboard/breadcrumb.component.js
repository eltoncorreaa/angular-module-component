angular.
  module('elton-web').
  component('breadcrumb', {
    templateUrl:'templates/breadcrumb.html',
    controller: function BreadcrumbController() {
    },
    bindings: {
        param: '@'
    }
  });