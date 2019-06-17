class MortySerializer < ActiveModel::Serializer
  attributes :morty , :rick_id
  belongs_to :rick
end
