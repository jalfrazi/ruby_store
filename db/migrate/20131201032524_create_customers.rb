class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password
      t.string :firstName
      t.string :lastName
      t.string :phone

      t.timestamps
    end
  end
end
