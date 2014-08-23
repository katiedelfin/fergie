class LoggedActivitiesController < ApplicationController
  responders :flash

  respond_to :html

  before_filter :find_logged_activity, only: [:update, :edit, :destroy]

  def index
    @logged_activities = LoggedActivity.all
  end

  def new
    @logged_activity = LoggedActivity.new
  end

  def create
    @logged_activity = LoggedActivity.create(logged_activity_params)
    respond_with @logged_activity, location: logged_activities_path
  end

  def edit

  end

  def update
    @logged_activity.update(logged_activity_params)
    respond_with @logged_activity, location: logged_activities_path
  end

  def destroy
    @logged_activity.destroy
    respond_with @logged_activity
  end

  private

  def find_logged_activity
    @logged_activity = LoggedActivity.find params[:id]
  end

  def logged_activity_params
    params.require(:logged_activity).permit :activity_id, :duration, :intensity
  end

end
