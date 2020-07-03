class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    record.booking.user == user
  end

  def create?
    record.booking.user == user
  end

  def destroy?
    record.booking.lair.user == user
    #whatever I authorize = record
  end
end
