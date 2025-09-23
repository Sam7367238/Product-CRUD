class CartController < ApplicationController
  def index
    @products = Product.where(cart: true)
  end
end
