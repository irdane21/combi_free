class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @combi = Combi.find(params[:combi_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.combi = Combi.find(params[:combi_id])
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :review_content, :review_rating, :status)
  end


end
