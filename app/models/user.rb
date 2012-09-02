class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :gt_id, :gt_user_id, :is_admin, :password

  has_and_belongs_to_many :orgs

  validates :email, :first_name, :last_name, :gt_id, :gt_user_id, :password, :presence => true
  validates :gt_id, :gt_user_id, :uniqueness => true

  def self.authenticate(username="", password="")
  	user = User.find_by_gt_user_id(username)

  	if (user and user.password == password)
  		return user
  	else
  		return false
  	end
  
  end
 
 end
