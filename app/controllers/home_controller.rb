class HomeController < ApplicationController
  def index
    @home = Task.where(username: current_user).where.not(status: 3).order("appointed")
    @homes = Post.where(user_id: current_user).order("id desc").limit(5)
  end

  def show
  end
end
