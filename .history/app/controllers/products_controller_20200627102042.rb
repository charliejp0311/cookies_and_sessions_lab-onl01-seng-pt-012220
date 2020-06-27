class ProductsController < ApplicationController
  def index
    @products = Products.all
  end

  def add
  end
end
