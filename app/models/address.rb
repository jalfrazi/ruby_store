class Address < ActiveRecord::Base

  # Address belongs to Customer
  belongs_to :customer


end
