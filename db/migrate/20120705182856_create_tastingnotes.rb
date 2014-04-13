class CreateTastingnotes < ActiveRecord::Migration
  def change
    create_table :tastingnotes do |t|
      t.integer :batch_id
      t.date :date
      t.string :taster
      t.float :temperature
      t.text :color
      t.text :head
      t.text :aroma
      t.text :taste
      t.text :body
      t.text :finish
      t.text :faults
      t.float :quality
      t.float :tipicity
      t.text :note

      t.timestamps
    end
  end
end
