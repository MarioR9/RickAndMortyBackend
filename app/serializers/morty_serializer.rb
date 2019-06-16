class MortySerializer < ActiveModel::Serializer
  attributes :morty
  belongs_to :rick
end
