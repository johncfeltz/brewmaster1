class CreateBrewsteps < ActiveRecord::Migration
  def change
    create_table :brewsteps do |t|
      t.string :action
      t.text :observation
      t.integer :batch_id

      t.timestamps
    end
  end
end
