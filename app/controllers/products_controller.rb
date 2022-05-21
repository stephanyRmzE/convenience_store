class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @busqueda = params[:query].capitalize
      if Product::CATEGORY.include?(@busqueda)
        @category = Category.where(category: @busqueda)
      else
        @category = Category.find(params[:category_id])
      end
    else
      @category = Category.find(params[:category_id])
    end
    @products = @category.products
  end
end
