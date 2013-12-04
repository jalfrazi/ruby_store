class Material < ActiveRecord::Base

  # Material belongs to ProductMaterial
  belongs_to :product_material


end
