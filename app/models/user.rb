class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :gt_id, :gt_user_id, :is_admin, :last_name, :password

  has_and_belongs_to_many :orgs

  def self.authenticate(username="", password="")
  	user = User.find_by_gt_user_id(username)

  	if (user and user.password == password)
  		return user
  	else
  		return false
  	end
  
  end
 
 end
