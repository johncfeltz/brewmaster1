class Ingredientclass < ActiveRecord::Base
  attr_accessible :ingredclass
  
  has_many :ingredients
  
end
