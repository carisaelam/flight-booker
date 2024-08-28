class BookingsController < ApplicationController
  def index
    @booking = Booking.all
  end

  def new
    @number_of_passengers = params[:number_of_passengers]
    flight_id = params[:selected_flight]
    @flight = Flight.find_by(id: flight_id)

    @booking = Booking.new
    @number_of_passengers.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    Rails.logger.info("Booking Parameters: #{booking_params.inspect}")

    if @booking.save
      redirect_to booking_path(@booking), notice: "Flight booked! ✈️"
    else
      Rails.logger.info("Booking save ERRORs: #{@booking.errors.full_messages}")
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
  end

  def create_booking_passengers
    params[:booking][:passengers_attributes].each do |_, passenger_params|
      passenger = Passenger.create!(passenger_params)
      BookingPassenger.create!(booking: @booking, passenger: passenger)
    end
  end
end
