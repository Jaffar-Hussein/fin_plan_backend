class User < ApplicationRecord
    has_secure_password
    has_many :goals
    has_many :debts
    has_many :retirements
    # validates :email, uniqueness: {message: "Email address is already in use"}
end
