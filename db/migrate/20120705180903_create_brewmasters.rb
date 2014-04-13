class CreateBrewmasters < ActiveRecord::Migration
  def change
    create_table :brewmasters do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
