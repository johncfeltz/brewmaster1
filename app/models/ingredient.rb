class Ingredient < ActiveRecord::Base
  attr_accessible :ingredientclass_id, :ingredientsource_id, :name, :note, :recipe

  belongs_to :ingredientclass
  belongs_to :ingredientsource
  
  has_many :scoops
  
  def name_src
    self.name + " - " + self.ingredientsource.name
  end

  def name_src_class
    self.name_src + " (" + self.ingredientclass.ingredclass + ")"
  end
  
end

