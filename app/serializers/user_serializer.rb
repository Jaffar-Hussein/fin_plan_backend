class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :second_name, :email
end
