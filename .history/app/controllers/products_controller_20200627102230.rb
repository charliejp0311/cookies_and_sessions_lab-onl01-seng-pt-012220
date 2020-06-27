class ProductsController < ApplicationController
  def index
    @cart_items = cart
  end

  def add
  end
end
