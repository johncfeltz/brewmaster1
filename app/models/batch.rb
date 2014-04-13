class Batch < ActiveRecord::Base
  attr_accessible :abv, :baserecipe_id, :brewmaster_id, :brewname_id, :brewstyle_id, :fg, :float, :isfinished, :location, :note, :og, :size

  belongs_to :baserecipe
  belongs_to :brewmaster
  belongs_to :brewname
  belongs_to :brewstyle
  
  has_many :brewsteps
  has_many :scoops
  has_many :tastingnotes
  
  def num_name
    self.id.to_s + " " + self.brewname.name
  end
  
  def num_name_master
    self.num_name + " - " + self.brewmaster.name
  end
  
  def num_name_date
    self.num_name + " (" + self.created_at.to_s + ")"
  end
  
end
