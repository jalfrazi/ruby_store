class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :product_id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
