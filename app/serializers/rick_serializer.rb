class RickSerializer < ActiveModel::Serializer
  attributes :username, :age, :avatar
  has_many :morties
end
