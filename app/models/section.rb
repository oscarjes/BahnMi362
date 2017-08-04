class Section < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :food_items
end
