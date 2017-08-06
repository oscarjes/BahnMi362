class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def item_count
    line_items.count
  end

  def total
    ordertotal = line_items.sum { |p| p.food_item.price * p.quantity }
    total = ordertotal + 20000
    total
  end
end
