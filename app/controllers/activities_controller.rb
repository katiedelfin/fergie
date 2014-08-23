class ActivitiesController < ApplicationController
  responders :flash

  respond_to :html

  before_filter :find_activity, only: [:update, :edit, :destroy]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    respond_with @activity, location: activities_path
  end

  def edit

  end

  def update
    @activity.update(activity_params)
    respond_with @activity, location: activities_path
  end

  def destroy
    @activity.destroy
    respond_with @activity, location: activities_path
  end

  private

  def find_activity
    @activity = Activity.find params[:id]
  end

  def activity_params
    params.require(:activity).permit :name
  end

  def interpolation_options
    { resource_name: @activity.name }
  end

end
