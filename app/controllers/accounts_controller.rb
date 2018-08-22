class AccountsController < ApplicationController
  skip_after_action :verify_authorized
  def dashboard
  end
end
