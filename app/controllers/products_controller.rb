class ProductsController < ApplicationController
  def product_viewer
    if search_params[:internal_title]
      @core_products = CoreProduct.where("internal_title LIKE ?", "%#{search_params[:internal_title]}%")
    else
      @core_products = CoreProduct.all
    end
  end

  def product_detail
    @core_product = CoreProduct.find_by(core_number: params[:core_number])
  end

  private

  def search_params
    params.permit(:internal_title)
  end
end
