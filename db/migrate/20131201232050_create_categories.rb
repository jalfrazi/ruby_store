class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :occasion
      t.string :age

      t.timestamps
    end
  end
end
