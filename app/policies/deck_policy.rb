class DeckPolicy < ApplicationPolicy
  def update?
    user.id == 1
  end
end
