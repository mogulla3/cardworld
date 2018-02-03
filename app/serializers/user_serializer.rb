class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :foo
  has_many :decks

  def foo
    "bar"
  end
end