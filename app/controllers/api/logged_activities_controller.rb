module Api
  class LoggedActivitiesController < ApplicationController
    def index
      logged_activities = LoggedActivity.all
      render json: logged_activities, status: 200
    end
  end
end
