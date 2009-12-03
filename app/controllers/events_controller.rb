class EventsController < ApplicationController
  # GET /events
  # GET /events.xml
  def index
    # @events = Event.all

    @group = Group.find(params[:group_id])
    @events = @group.events

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end
  
end
