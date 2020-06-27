class ProductsController < ApplicationController
  def index
    @products = []
    if cart.empty?
      @products = Product.all
    else
      cart.map do |item|
        @products << Product.find(item)
      end
    end
  end

  def create
    product = Product.find_by(name: => params[:product][:name])
    session[:cart] << product.id
  end


end
