class Event < ActiveRecord::Base

  attr_accessible :description, :end_time, :location, :start_time, :title, :org_id

  belongs_to :org

  validates :title, :description, :location, :start_time, :end_time, :presence => true

end