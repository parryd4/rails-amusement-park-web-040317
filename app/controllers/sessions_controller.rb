class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    session[:user_id] = user.id
    redirect_to show_path(user)
  end

  def destroy
    session.clear
    redirect_to root_path
  end


end
