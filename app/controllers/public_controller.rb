class PublicController < ApplicationController
  def index
    @events = Event.all
    @orgs = Org.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  def show
    if Org.find_by_permalink(params[:permalink])
      org = Org.find_by_permalink(params[:permalink])
      redirect_to :controller=> "orgs", :action => "show", :id => org.id
    else
      flash[:notice] = "Invalid Org Name"
      redirect_to :root
    end 

  end
end
