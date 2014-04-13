class CreateIngredientsources < ActiveRecord::Migration
  def change
    create_table :ingredientsources do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :phone
      t.string :email
      t.string :url
      t.text :note

      t.timestamps
    end
  end
end
