class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :section
  has_many :line_items, dependent: :destroy
end
