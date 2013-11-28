class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :customer_id
      t.string :address1
      t.string :address2
      t.string :index
      t.string :town
      t.string :county
      t.string :country

      t.timestamps
    end
  end
end
