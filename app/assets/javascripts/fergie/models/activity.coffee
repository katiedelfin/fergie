angular.module('fergie.models').factory 'Activity', (RailsResource)->
  class Activity extends RailsResource
    @configure
      url: '/api/activities'
      name: 'activity'
      defaultParams:
        authenticity_token: $('meta[name="csrf-token"]').attr('content')
