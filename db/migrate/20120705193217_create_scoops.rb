class CreateScoops < ActiveRecord::Migration
  def change
    create_table :scoops do |t|
      t.integer :batch_id
      t.integer :ingredient_id
      t.float :quantity
      t.string :unit

      t.timestamps
    end
  end
end
