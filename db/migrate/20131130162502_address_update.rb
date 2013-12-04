class AddressUpdate < ActiveRecord::Migration
  def change

    remove_column :addresses, :zip, :string
    add_column :addresses, :code, :string

  end
end
