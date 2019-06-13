class MortySerializer < ActiveModel::Serializer
  attributes :name
  belongs_to :rick
end
