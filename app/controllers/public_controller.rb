class PublicController < ApplicationController
  
  def index
    @orgs = Org.find(:all, :order => 'name')
    @events1 = Event.all
    
  end

  def show
    if org = Org.find_by_permalink(params[:permalink])
      redirect_to :controller=> "orgs", :action => "show", :id => org.id
    else
      flash[:notice] = "Invalid Org Name"
      redirect_to :root
    end 

  end
end
