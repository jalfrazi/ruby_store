class TypeUpdate < ActiveRecord::Migration
  def change
    remove_column :types, :product_id, :integer
  end
end
