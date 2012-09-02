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
    @event = Event.find(params[:id])
    @org = Org.find_by_id(@event.org_id)
  end
end
