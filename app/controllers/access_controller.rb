class AccessController < ApplicationController
  
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
  	menu
  	render('menu')
  end
  
  def login
  	#display login form
  end

  def attempt_login
  	authorized_user = User.authenticate(
  		params[:gt_user_id], params[:password])

  	if authorized_user
      session[:user_id] = authorized_user.id
      session[:gt_user_id] = authorized_user.gt_user_id
  		flash[:notice] = "You are now logged in"
  		redirect_to(:action => 'menu')
  	else
  		flash[:notice] = "Invalid login"
  		redirect_to(:action => 'login')
  	end
  end

  def logout
    session[:user_id] = nil
    session[:gt_user_id] = nil
  	flash[:notice] = 'You are now logged out'
  	redirect_to(:action => "login")
  end
  
 
end