angular.module('fergie.models').factory 'Intensity', (RailsResource)->
  class Intensity extends RailsResource
    @configure
      url: '/api/intensities'
      name: 'intensity'
      defaultParams:
        authenticity_token: $('meta[name="csrf-token"]').attr('content')
