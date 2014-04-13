class Brewname < ActiveRecord::Base
  attr_accessible :name, :note
  
  has_many :batches
end
