class MortySerializer < ActiveModel::Serializer
  attributes :id, :morty, :food ,:health, :level
  
end
