class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def create
    @trip = Trip.new()

    if @trip.save
      flash[:notice] = "Trip was created!"
      redirect_to trip_path(@trip)
    else
      render 'new'
    end
  end

  def new
    @trip = Trip.new

  end

  def show
    @trip = Trip.find(params[:id])

  end

end
