class CreateBrewstyles < ActiveRecord::Migration
  def change
    create_table :brewstyles do |t|
      t.string :style
      t.text :note

      t.timestamps
    end
  end
end
