class CartsController < ApplicationController
  def add
    @cart = get_cart
    @cart.line_items.create line_item_params
    unless @cart.save
      flash[:error] = "There was an error with adding the item to your cart. Please try again."
    end
    redirect_back(fallback_location: menu_path)
  end

  def show
    @cart = get_cart
  end

  def line_item_params
    params.require(:line_item).permit(:food_item_id, :quantity)
  end

  def

  def total
    @cart = get_cart
    @cart.line_items
  end
end
