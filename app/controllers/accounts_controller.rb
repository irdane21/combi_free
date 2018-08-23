class AccountsController < ApplicationController
  skip_after_action :verify_authorized
  def dashboard
    fail
    @bookings = current_user.bookings
  end

  def account_params
    params.permit()
  end
end
