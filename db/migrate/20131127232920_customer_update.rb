class CustomerUpdate < ActiveRecord::Migration
  def change




    #remove_column :customers, :firstName

    add_column :customers, :firstName , :string





  end
end
