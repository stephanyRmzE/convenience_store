class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.global_search(params[:query])
    else
      @products = Product.all
    end
  end
end
