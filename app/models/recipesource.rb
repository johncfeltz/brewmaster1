class Recipesource < ActiveRecord::Base
  attr_accessible :source

  has_many :baserecipes
  
end
