angular.module('fergie.filters').filter 'capitalize',->
  console.log(arguments);
  (string)->
    _.capitalize(string);
