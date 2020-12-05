class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true, numericality: { only_integer: true }, inclusion: { in: (1..10) }
end
