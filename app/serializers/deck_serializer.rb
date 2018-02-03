class DeckSerializer < ActiveModel::Serializer
  attributes :id, :Card, :Tag
end
