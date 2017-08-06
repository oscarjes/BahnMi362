class OrdersController < ApplicationController
  def create
    @order = Order.new order_params
    @order.line_items = get_cart.line_items
    if @order.save
      destroy_cart
    end
    redirect_to menu_path
  end

  def order_params
    params.require(:order).permit(:name, :address, :phone)
  end
end
