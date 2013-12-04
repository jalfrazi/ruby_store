class SizeUpdate < ActiveRecord::Migration
  def change
    rename_column :sizes, :in, :ind

  end
end



