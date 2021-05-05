class LocationsController < ApplicationController
  before_action :authenticate_user!, only: [:update]

  def update
    location = Location.find(params[:id])
    if(location.quantity + edit_params[:quantity].to_i >= 0)
      location.update(quantity: (location.quantity + edit_params[:quantity].to_i))
    else
      flash[:alert] = "Can't have negative products on location"
    end
    core_product = CoreProduct.find(location.core_product_id)
    redirect_to(product_path(core_product.core_number))
  end

  private
  def edit_params
    params.require(:location).permit(:quantity)
  end
end
