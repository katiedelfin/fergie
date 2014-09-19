module Api
  class LoggedActivitiesController < ApplicationController
    def index
      logged_activities = LoggedActivity.paginate(:page => params[:page]).includes(:activity)
      render json: logged_activities.to_json(include: :activity), status: 200
    end

    def create
      logged_activity = LoggedActivity.create(logged_activity_params)
      render json: logged_activity.to_json(include: :activity), status: 200
    end

    def destroy
      logged_activity = LoggedActivity.find(params[:id]).includes(:activity)
      logged_activity.destroy
      render json: logged_activity.to_json(include: :activity), status: 200
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
