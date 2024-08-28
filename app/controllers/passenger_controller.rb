class PassengerController < ApplicationController
  def index
    @passenger = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def show
    @passenger = Passenger.find(params[:id])
  end
end
