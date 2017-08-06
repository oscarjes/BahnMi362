class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def total
    line_items.sum { |p| p.food_item.price * p.quantity }
  end
end