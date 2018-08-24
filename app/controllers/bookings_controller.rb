class BookingsController < ApplicationController
  require 'date'

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @combi = Combi.find(params[:combi_id])
    @booking.combi = @combi
    start = Date.parse(@booking.begin_date)
    last = Date.parse(@booking.end_date)
    @booking.price = ((last - start).to_i * @combi.price )
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
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.review_title = params[:booking][:review_title]
    @booking.review_content = params[:booking][:review_content]
    @booking.review_rating = params[:booking][:review_rating]
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render :review
    end
  end

  def validate
    @booking = Booking.find(params[:id])
    @booking.status = 1
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      alert = 'Something went wrong, please retry'
    end
  end

  def refused
    @booking = Booking.find(params[:id])
    @booking.status = 2
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      alert = 'Something went wrong, please retry'
    end
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
