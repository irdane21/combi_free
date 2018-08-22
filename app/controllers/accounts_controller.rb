class AccountsController < ApplicationController

  skip_after_action :verify_authorized

  def dashboard
    @user = User.find(current_user.id)
  end
end

