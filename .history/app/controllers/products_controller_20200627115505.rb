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
    this_cart = cart
    product = Product.find_or_create_by(product: params[:product][:product])
    this_cart << product.id
    session[:cart] = this_cart
    redirect_to products_path
  end


end
