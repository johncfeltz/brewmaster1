class CreateIngredientclasses < ActiveRecord::Migration
  def change
    create_table :ingredientclasses do |t|
      t.string :ingredclass

      t.timestamps
    end
  end
end
