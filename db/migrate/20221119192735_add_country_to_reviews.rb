class AddCountryToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :country, null: false, foreign_key: true
  end
end
