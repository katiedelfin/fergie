angular.module('fergie.services').factory('LoggedActivity', ['railsResourceFactory', function (railsResourceFactory) {
  return railsResourceFactory({
    url: '/api/logged_activities',
    name: 'logged_activity'
  });
}]);
