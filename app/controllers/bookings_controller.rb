class BookingsController < ApplicationController
  def new
    @number_of_passengers = params[:number_of_passengers]
    flight_id = params[:selected_flight]
    @flight = Flight.find_by(id: flight_id)
  end
end
