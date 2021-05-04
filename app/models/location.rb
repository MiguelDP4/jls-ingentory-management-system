class Location < ApplicationRecord
  belongs_to :core_product

  def product_core
    core_product.core_number
  end
end
