class Brewstyle < ActiveRecord::Base
  attr_accessible :note, :style
  
  has_many :batches
end
