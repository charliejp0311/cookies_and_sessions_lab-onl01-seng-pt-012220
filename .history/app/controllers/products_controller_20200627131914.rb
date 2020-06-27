class ProductsController < ApplicationController
  def index
    @products = []
    if cart.empty?
      @products = Product.all
    else
      cart.each do |item|
        @products << Product.find(item)
      end
    end
  end

  def add
    this_cart = cart
    product = Product.find_or_create_by(name: params[:product])
    this_cart << product
    session[:cart] = this_cart
    redirect_to products_path
  end


end
