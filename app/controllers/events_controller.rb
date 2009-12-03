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
  
   # GET /events/1
  # GET /events/1.xml
  def show
    @events = Events.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @events }
    end
  end
 
  # GET /events/new
  # GET /events/new.xml
  def new
    @events = Events.new
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @events }
    end
  end
 
  # GET /events/1/edit
  def edit
    @events = Events.find(params[:id])
  end
 
  # POST /events
  # POST /events.xml
  def create
    @events = Events.new(params[:events])
 
    respond_to do |format|
      if @events.save
        flash[:notice] = 'Events was successfully created.'
        format.html { redirect_to(@events) }
        format.xml { render :xml => @events, :status => :created, :location => @events }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @events.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # PUT /events/1
  # PUT /events/1.xml
  def update
    @events = Events.find(params[:id])
 
    respond_to do |format|
      if @events.update_attributes(params[:events])
        flash[:notice] = 'Events was successfully updated.'
        format.html { redirect_to(@events) }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @events.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @events = Events.find(params[:id])
    @events.destroy
 
    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml { head :ok }
    end
  end
  
end
