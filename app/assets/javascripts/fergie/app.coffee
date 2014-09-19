angular.module('fergie', ['rails', 'fergie.models', 'fergie.directives', 'fergie.filters']);

$(document).on 'ready page:load', ()->
  angular.bootstrap(document.body, ['fergie']);

_.mixin 'capitalize': (string)->
  return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase(); 
