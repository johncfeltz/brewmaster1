class CreateBaserecipes < ActiveRecord::Migration
  def change
    create_table :baserecipes do |t|
      t.string :name
      t.integer :recipesource_id
      t.string :recipesourceref
      t.text :recipe
      t.text :note

      t.timestamps
    end
  end
end
