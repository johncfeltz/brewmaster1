class AddFgToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :fg, :float
  end
end
