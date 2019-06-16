class RickSerializer < ActiveModel::Serializer
  attributes :name, :age, :char
  has_many :morties
end
