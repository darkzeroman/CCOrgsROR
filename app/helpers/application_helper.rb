module ApplicationHelper

  def confirm_admin_logged_in?
    unless session[:user_id] && User.find_by_id(session[:user_id]) && User.find_by_id(session[:user_id]).is_admin?
      return false #halts before filter
    else
      return true
    end
  end

  def confirm_logged_in?
  	if session[:user_id].blank?
  		
  		return false
  	else
  		return true
  	end
  end

  def curr_user_orgs_include?(user_id="", org=nil)

  	if user_id && User.find_by_id(user_id)
      return User.find_by_id(user_id).orgs.include? org
    else
      return false
    end

  end

end
