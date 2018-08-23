class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @combi = Combi.find(params[:combi_id])
    @booking.combi = @combi
    @booking.price = @combi.price
    @booking.user = current_user
    authorize @booking
    # fail
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to combi_path(@combi)
    end
  end

  def validate
    @booking = Booking.new(booking_params)
    @booking.status = true
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.permit(:begin_date, :end_date)
  end

end
