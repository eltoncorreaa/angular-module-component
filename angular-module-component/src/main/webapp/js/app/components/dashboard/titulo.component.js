angular.
  module('dellas-web').
  component('titulo', {
    templateUrl:'templates/titulo.html',
    controller: function TituloController() {
    },
    bindings: {
        param: '@',
        displaytoolbar: '@'
    }
  });