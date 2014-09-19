angular.module('fergie.models').factory 'LoggedActivity', (RailsResource)->
  class LoggedActivity extends RailsResource
    @configure
      url: '/api/logged_activities'
      name: 'logged_activity'
      defaultParams:
        authenticity_token: $('meta[name="csrf-token"]').attr('content')
