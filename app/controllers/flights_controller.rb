class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  def index
    @flights = Flight.all
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

  def search
    if params[:search].blank?
      @flights = Flight.all
    else
      @flights = Flight.search(params)
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
