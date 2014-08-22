class LoggedActivitiesController < ApplicationController

  before_filter :find_logged_activity, only: [:show, :update, :edit, :destroy]

  def index
    @logged_activities = current_user.logged_activities
  end

  def new
    @logged_activity = LoggedActivity.new
  end

  def create
    @logged_activity = LoggedActivity.new(logged_activity_params)
    binding.remote_pry
    if @logged_activity.save
      flash[:notice] = "Yayyy!!! Way to go!"
    else
      flash[:warning] = "Oops! Try again!"
    end

    redirect_to logged_activity_path @logged_activity
  end

  def show

  end

  def update

  end

  def edit

  end

  def destroy

  end

  protected

  def find_logged_activity
    @logged_activity = LoggedActivity.find params[:id]
  end

  def logged_activity_params
    params.require(:logged_activity).permit :activity_id, :duration, :intensity
  end

end
