class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :type_id
      t.string :name
      t.string :us
      t.string :uk
      t.string :cn
      t.string :ind
      t.string :it
      t.decimal :inch
      t.decimal :mm

      t.timestamps
    end
  end
end
