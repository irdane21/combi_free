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

  def review
    @booking = Booking.find(params[:id])
    authorize @combi
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(params_booking)
      redirect_to dashboard_path
    else
      render :review
    end
  end

  def validate
    @booking = Booking.new(booking_params)
    @booking.status = 1
    redirect_to dashboard_path
  end

  def refused
    @booking = Booking.new(booking_params)
    @booking.status = 2
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.permit(:begin_date, :end_date, :review_title, :review_content, :review_rating)
  end

end
