class AccountPolicy < ApplicationPolicy

  def dashboard?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
