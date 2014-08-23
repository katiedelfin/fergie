class ActivitiesController < ApplicationController

  before_filter :find_activity, only: [:show, :update, :edit, :destroy]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      flash[:notice] = "New activity added!"
    else
      flash[:warning] = "Oops! Try again!"
    end

    redirect_to activities_path
  end

  def show

  end

  def edit

  end

  def update
    @activity.update(activity_params)

    if @activity.save
      flash[:notice] = "Updated!"
    else
      flash[:warning] = "Oops! Try again!"
    end

    redirect_to activities_path
  end

  def destroy
    if @activity.destroy
      flash[:notice] = "Activity removed"
    else
      flash[:warning] = "Oh noes!"
    end

    redirect_to activities_path
  end

  protected

  def find_activity
    @activity = Activity.find params[:id]
  end

  def activity_params
    params.require(:activity).permit :name
  end

end
