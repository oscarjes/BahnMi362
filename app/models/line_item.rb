class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food_item
  belongs_to :order, optional: true
  validates :quantity, presence: true, numericality: {greater_than: 0}

  def name
    food_item.name
  end
end
