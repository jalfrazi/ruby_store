class Type < ActiveRecord::Base

  # Type belongs to Product
  belongs_to :product

end
