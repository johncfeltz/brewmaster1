class Scoop < ActiveRecord::Base
  attr_accessible :batch_id, :ingredient_id, :quantity, :unit
  
  belongs_to :batch
  belongs_to :ingredient
end
