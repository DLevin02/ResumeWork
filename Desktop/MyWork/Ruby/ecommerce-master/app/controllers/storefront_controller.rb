class StorefrontController < ApplicationController
 before_action :categories, :brands
 
 
  def all_items
    @products = Product.all
  end

  def items_by_category
    @products = Product.where(category_id: params[:cat_id])
    @category = Category.find(params[:cat_id])
  end

  def items_by_brand
    @products = Product.where(brand: params[:brand])
    @brand = params[:brand]
  end
end
