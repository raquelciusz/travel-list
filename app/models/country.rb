class Country < ApplicationRecord
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  RATING = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true }
end
