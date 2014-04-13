class CreateBrewnames < ActiveRecord::Migration
  def change
    create_table :brewnames do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
