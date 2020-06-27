class ProductsController < ApplicationController
  def index
    if cart.empty?
      @products = Product.all
    else
      @products = []
      cart.each do |item|
        @products << Product.find_or_create_by(name: item)
      end
    end
  end

  def add
    cart
    product = Product.find_or_create_by(name: params[:product])
    session[:cart] << product.name
    redirect_to products_path
  end


end
