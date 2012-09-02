class Org < ActiveRecord::Base

  attr_accessible :description, :name, :permalink

  has_many :events
  has_and_belongs_to_many :users

  validates :name, :description, :presence => true
  validates :permalink, :uniqueness => true

end
