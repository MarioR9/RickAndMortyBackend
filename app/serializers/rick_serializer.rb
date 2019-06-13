class RickSerializer < ActiveModel::Serializer
  attributes :name, :age
  has_many :morties
end
