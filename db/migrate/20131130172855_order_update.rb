class OrderUpdate < ActiveRecord::Migration
  def change
    remove_column :orders, :date, :datetime
  end
end
