class Ingredientsource < ActiveRecord::Base
  attr_accessible :address1, :address2, :email, :name, :note, :phone, :url
  
  has_many :ingredients
  
end
