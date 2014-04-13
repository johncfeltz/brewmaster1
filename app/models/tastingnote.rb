class Tastingnote < ActiveRecord::Base
  attr_accessible :aroma, :batch_id, :body, :color, :date, :faults, :finish, :head, :note, :quality, :taste, :taster, :temperature, :tipicity

  belongs_to :batch
end
