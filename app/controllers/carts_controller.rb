class CartsController < ApplicationController
  def add
    @cart = get_cart
    @cart.line_items.create! line_item_params
    redirect_back(fallback_location: menu_path)
  end

  def show
    @cart = get_cart
  end

  def line_item_params
    params.require(:line_item).permit(:food_item_id, :quantity)
  end
end
