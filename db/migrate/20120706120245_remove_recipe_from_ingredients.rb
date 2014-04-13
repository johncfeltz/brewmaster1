class RemoveRecipeFromIngredients < ActiveRecord::Migration
  def up
    remove_column :ingredients, :recipe
  end

  def down
    add_column :ingredients, :recipe, :text
  end
end
