class Goal < ApplicationRecord
    validates :name, presence: true
    validates :amount, numericality: { greater_than_or_equal_to: 0 }
    validates :due_date, presence: true
end