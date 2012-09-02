class ApplicationController < ActionController::Base
  protect_from_forgery

  protected 
  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Not logged in"
      redirect_to(:controller => 'access', :action=>'login')
      #debugger
      return false #halts before filter

    else
      return true
    end

  end

  def confirm_admin_logged_in
    unless session[:user_id] && User.find_by_id(:user_id.to_i).is_admin?
      flash[:notice] = "Please log in"
      redirect_to(:controller => 'access', :action=>'login')
      return false #halts before filter
    else
      return true
    end
  end


end


