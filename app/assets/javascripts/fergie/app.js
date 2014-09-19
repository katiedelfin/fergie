angular.module('fergie', ['rails', 'fergie.services']);

angular.module('fergie').run(function(LoggedActivity) {
  LoggedActivity.query().then(function(loggedActivies) {
    _.each(loggedActivies, function(activity) {
      console.log(JSON.stringify(activity, undefined, 2));
    })
  })
});
