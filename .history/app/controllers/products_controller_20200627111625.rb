class ProductsController < ApplicationController
  def index
    @products = 
    if cart.empty?
      @products = Product.all
    else
      cart.map do |item|
        Product.find(item)
      end
    end
  end

  def add
  end
end
