class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :product_id
      t.string :name
      t.string :country
      t.decimal :in
      t.decimal :mm

      t.timestamps
    end
  end
end
