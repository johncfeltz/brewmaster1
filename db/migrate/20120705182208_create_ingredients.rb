class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :ingredientclass_id
      t.integer :ingredientsource_id
      t.text :recipe
      t.text :note

      t.timestamps
    end
  end
end
