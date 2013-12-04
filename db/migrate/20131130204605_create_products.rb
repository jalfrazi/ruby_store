class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :type_id
      t.text :description
      t.string :imageUrl
      t.decimal :price
      t.decimal :discount
      t.integer :stock
      t.string :status

      t.timestamps
    end
  end
end
