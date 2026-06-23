class FlightsController < ApplicationController
  def index
    date = if params[:date] then Date.parse(params[:date]) else nil end
    @flights = Flight.between(params[:departure_code], params[:arrival_code]).departing_on(date)
  end
end
