angular.module('fergie', ['rails', 'fergie.models', 'fergie.directives']);

$(document).on 'ready page:load', ()->
  angular.bootstrap(document.body, ['fergie']);
