class CreateRecipesources < ActiveRecord::Migration
  def change
    create_table :recipesources do |t|
      t.string :source

      t.timestamps
    end
  end
end
