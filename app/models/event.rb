class Event < ActiveRecord::Base
  attr_accessible :org_id

  belongs_to :org

  attr_accessible :description, :end_time, :location, :start_time, :title


end
