class Source < ApplicationRecord
  validates :name, presence: true
  validates :source_type, inclusion: { in: %w(salary investment pension)}
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates :frequency, inclusion: { in: %w(monthly quarterly annually)}
end
