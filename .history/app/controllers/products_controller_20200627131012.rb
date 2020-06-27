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

  def add
    this_cart = cart
    byebug
    product = Product.find_or_create_by(name: params[:product])
    this_cart << product.id
    session[:cart] = this_cart
    redirect_to products_path
  end


end
