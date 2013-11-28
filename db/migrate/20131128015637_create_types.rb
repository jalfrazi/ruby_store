class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :product_id
      t.string :name

      t.timestamps
    end
  end
end
