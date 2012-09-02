class Org < ActiveRecord::Base
  attr_accessible :description, :name, :permalink

  validates :name, :description, :presence => true

  validates :permalink, :uniqueness => true

  has_many :events

  has_and_belongs_to_many :users
end
