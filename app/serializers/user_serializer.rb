class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :nickname, :email
end
