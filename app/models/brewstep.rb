class Brewstep < ActiveRecord::Base
  attr_accessible :action, :batch_id, :observation
  
  belongs_to :batch
end
