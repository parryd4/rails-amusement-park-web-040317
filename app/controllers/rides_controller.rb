class RidesController < ApplicationController

  def create
    ride = Ride.new(user_id: session[:user_id], attraction_id: params[:attraction][:id])
    flash[:notice] = ride.take_ride
    redirect_to show_path(ride.user)
  end

end
