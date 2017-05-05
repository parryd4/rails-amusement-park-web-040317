class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to show_path(@user)
  end

  def show
    @user = User.find(params[:id])

    if !session[:user_id].present?
        redirect_to root_path
    end
  end

  def index

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :height, :happiness, :nausea, :tickets, :admin)
  end

end
