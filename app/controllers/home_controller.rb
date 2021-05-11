class HomeController < ApplicationController
  def index
    @home = Task.where(username: current_user).where.not(status: 3).order("appointed")
  end

  def show
  end
end
