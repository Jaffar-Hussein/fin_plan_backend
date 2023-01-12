class Retirement < ApplicationRecord
  validates :years, numericality: { greater_than_or_equal_to: 0 }
  validates :amount_so_far, numericality: { greater_than_or_equal_to: 0 }
  validates :goal, numericality: { greater_than: 0 }
  validates :sources, presence: true
end
