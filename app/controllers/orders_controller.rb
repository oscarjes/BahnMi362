class OrdersController < ApplicationController
  def create
    @order = Order.new order_params
    @order.line_items = get_cart.line_items
    @order.save
    # if @order.save
    #   destroy_cart
    #end
    redirect_to thanks_order_path(id: @order.id)
  end

  def order_params
    params.require(:order).permit(:name, :address, :phone)
  end

  def show  
  end

  def thanks
    @order = Order.find(params[:id])
  end
end
