class BookingsController < ApplicationController

  def dashboard
    @user = User.find(current_user.id)
    authorize @dashboard
  end
end

