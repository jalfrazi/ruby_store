class CreateProductMaterials < ActiveRecord::Migration
  def change
    create_table :product_materials do |t|
      t.integer :product_id
      t.integer :material_id
      t.integer :g
      t.integer :oz

      t.timestamps
    end
  end
end
