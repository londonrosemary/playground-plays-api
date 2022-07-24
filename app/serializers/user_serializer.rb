class UserSerializer < ActiveModel::Serializer
  attributes :id, :id, :first_name, :last_name, :email, :password, :admin
end
