class ProductsController < ApplicationController
  def product_viewer
    @core_products = CoreProduct.all
  end

  def product_detail
    @core_product = CoreProduct.find_by(core_number: params[:core_number])
  end
end
