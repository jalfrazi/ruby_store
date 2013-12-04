class ProductMaterialUpdate < ActiveRecord::Migration
  def change


    remove_column :product_materials, :weight, :integer
    remove_column :product_materials, :quality, :integer

    add_column :product_materials, :g, :integer
    add_column :product_materials, :oz, :decimal

    add_column :materials, :quality, :string
  end
end
