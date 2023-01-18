class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :second_name, :email, :age, :gender, :source_type, :retirement_age, :bank_balance
end
