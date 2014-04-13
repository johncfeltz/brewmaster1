class RemoveMistakesFromBatches < ActiveRecord::Migration
  def up
    remove_column :batches, :float
    remove_column :batches, :fg
  end

  def down
    add_column :batches, :fg, :string
    add_column :batches, :float, :string
  end
end
