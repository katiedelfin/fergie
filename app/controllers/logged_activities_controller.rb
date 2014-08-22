class LoggedActivitiesController < ApplicationController

  before_filter :find_logged_activity, only: [:show, :update, :edit, :destroy]

  def index
    @logged_activities = LoggedActivity.all
  end

  def new
    @logged_activity = LoggedActivity.new
  end

  def create
    @logged_activity = LoggedActivity.new(logged_activity_params)

    if @logged_activity.save
      flash[:notice] = "Yayyy!!! Way to go!"
    else
      flash[:warning] = "Oops! Try again!"
    end

    redirect_to logged_activities_path
  end

  def show

  end

  def edit

  end

  def update
    @logged_activity.update(logged_activity_params)

    if @logged_activity.save
      flash[:notice] = "Updated!"
    else
      flash[:warning] = "Oops! Try again!"
    end

    redirect_to logged_activities_path
  end

  def destroy
    if @logged_activity.destroy
      flash[:notice] = "Logged activity removed"
    else
      flash[:warning] = "Oh noes!"
    end

    redirect_to logged_activities_path
  end

  protected

  def find_logged_activity
    @logged_activity = LoggedActivity.find params[:id]
  end

  def logged_activity_params
    params.require(:logged_activity).permit :activity_id, :duration, :intensity
  end

end
