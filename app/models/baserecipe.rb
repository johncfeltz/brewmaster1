class Baserecipe < ActiveRecord::Base
  attr_accessible :name, :note, :recipe, :recipesource_id, :recipesourceref
  
  belongs_to :recipesource
  has_many :batches
  
  def name_src_ref
    self.name + " - " + self.recipesource.source + ", " + self.recipesourceref
  end
end
