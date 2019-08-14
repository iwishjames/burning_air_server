class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]

  # GET /flights
  # GET /flights.json
  def index
    @flights = Flight.all

  end

  # GET /flights/1
  # GET /flights/1.json
  def show
    @seats = @flight.seats
  end

  # GET /flights/new
  def new
    @flight = Flight.new
    @seats = @flight.seats
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  # POST /flights.json
  def create
    # TODO: why change from new to create makes it so I can access the @flight.id
    @flight = Flight.new(flight_params)

    # when a flight is created, create all the associated seats
    @airplane = Airplane.find @flight.airplane_id
    # find the number of rows/columns that the aeroplane has, create a range from 1 to that number, then split that into an array.
    # this will allow us to loop through and create a seat for each value below
    @rows = (1..@airplane.rows).to_a
    @columns = (1..@airplane.columns).to_a
    # create a seat for each row and column and associate it with this flight.
    @rows.each do |row|
      @columns.each do |col|
        seat = Seat.create :row => row, :column => col, :is_taken => false
        @flight.seats << seat
      end
    end

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
      @seats = @flight.seats
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_params
      params.require(:flight).permit(:flight_num, :date, :from, :to, :airplane_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_params
      params.require(:seat).permit(:row, :column, :is_taken, :flight_id)
    end
end
