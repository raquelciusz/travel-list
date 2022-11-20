class Review < ApplicationRecord
  belongs_to :list
  belongs_to :country

  validates :country_id, uniqueness: { scope: :list_id}
  validates :comment, length: {minimum: 6}
end
