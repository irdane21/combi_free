class AccountPolicy < ApplicationPolicy

  def dashboard?
    puts "before"
    record.user == user
    puts "after"
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
