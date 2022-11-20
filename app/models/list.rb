class List < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :countries, through: :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
