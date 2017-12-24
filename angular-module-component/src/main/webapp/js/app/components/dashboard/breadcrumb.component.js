angular.
  module('dellas-web').
  component('breadcrumb', {
    templateUrl:'templates/breadcrumb.html',
    controller: function BreadcrumbController() {
    },
    bindings: {
        param: '@'
    }
  });