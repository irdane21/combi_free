class AccountsController < ApplicationController
  skip_after_action :verify_authorized
  def dashboard
    @bookings = current_user.bookings
  end
end
