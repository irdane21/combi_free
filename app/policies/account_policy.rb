class CombiPolicy < ApplicationPolicy

  def dashboard
    record.user == user
  end
end
