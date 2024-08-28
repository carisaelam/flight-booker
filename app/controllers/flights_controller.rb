class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  def index
    @flights = Flight.all

    @flights = @flights.where(departure_airport_id: params[:departure_airport]) if params[:departure_airport].present?

    @flights = @flights.where(arrival_airport_id: params[:arrival_airport]) if params[:arrival_airport].present?

    # @flights = @flights.where("number_of_passengers >= ?", params[:number_of_passengers]) if params[:number_of_passengers].present?

    if params[:flight_date].present?
      # Convert flight_date to a Date object and find flights on that date
      flight_date = Date.strptime(params[:flight_date], "%m/%d/%Y")
      @flights = @flights.where(start_date_time: flight_date.beginning_of_day..flight_date.end_of_day)
    end

    if @flights.empty?
      flash[:notice] = "No flights found"
    end
  end

  def show
  end

  def new
    @flight = Flight.new
  end

  def edit
  end

  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @flight.destroy!

    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :start_date_time, :flight_duration, :search)
    end
end
