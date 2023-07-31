class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :password_digest, :role, :department, :designation
has_many :assets
end
