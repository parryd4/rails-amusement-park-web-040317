class RidesController < ApplicationController

  def create
    ride = Ride.create(user_id: session[:user_id], attraction_id: params[:attraction][:id])
    ride.take_ride
    @user = User.find(session[:user_id])
    flash[:notice] = "Thanks for riding the #{ride.attraction.name}!"
    redirect_to show_path(@user)

  end

end
