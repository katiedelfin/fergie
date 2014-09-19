module Api
  class LoggedActivitiesController < ApplicationController
    def index
      logged_activities = LoggedActivity.all
      render json: logged_activities, status: 200
    end

    def create
      logged_activity = LoggedActivity.create(logged_activity_params)
      render json: logged_activity, status: 200
    end

    def destroy
      logged_activity = LoggedActivity.find params[:id]
      logged_activity.destroy
      render json: logged_activity, status: 200
    end

    private

    def logged_activity_params
      params.require(:logged_activity).permit :activity_id,
                                              :duration,
                                              :intensity,
                                              :date
    end
  end
end
