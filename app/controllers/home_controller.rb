class HomeController < ApplicationController
  def index
    redirect_to logged_activities_path
  end
end
