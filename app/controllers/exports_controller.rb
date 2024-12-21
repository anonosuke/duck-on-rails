class ExportsController < ApplicationController
  def index
    users = User.all
    products = Product.all
    orders = Order.all

    render json: {
      users: users.as_json,
      products: products.as_json,
      orders: orders.as_json
    }
  end
end
