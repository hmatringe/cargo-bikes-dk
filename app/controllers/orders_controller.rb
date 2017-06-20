class OrdersController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    order  = Order.create!(bike_sku: @bike.sku, amount: @bike.price, state: 'pending')

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end
end
