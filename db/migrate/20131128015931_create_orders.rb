class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :discount
      t.decimal :tax
      t.decimal :shippingFee
      t.decimal :total
      t.integer :payment_id
      t.string :status
      t.datetime :date

      t.timestamps
    end
  end
end
