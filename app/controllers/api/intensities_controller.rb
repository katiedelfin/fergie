module Api
  class IntensitiesController < ApplicationController
    def index
      intensities = LoggedActivity.intensities.keys
      render json: intensities, status: 200
    end
  end
end
