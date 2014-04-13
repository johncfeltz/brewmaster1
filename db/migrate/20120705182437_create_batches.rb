class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :location
      t.float :size
      t.float :abv
      t.float :og
      t.string :fg
      t.string :float
      t.integer :brewstyle_id
      t.integer :brewmaster_id
      t.integer :brewname_id
      t.integer :baserecipe_id
      t.boolean :isfinished
      t.text :note

      t.timestamps
    end
  end
end
