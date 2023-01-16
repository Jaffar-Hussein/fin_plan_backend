class User < ApplicationRecord
    has_secure_password
    has_many :goals
    validates :email, uniqueness: {message: "Email address is already in use"}
end
