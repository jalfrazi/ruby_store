class ProductUpdate < ActiveRecord::Migration
  def change
    add_column :products, :imageUrl, :string
  end
end
