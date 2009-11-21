class VotersController < ApplicationController
  # GET /voters
  # GET /voters.xml
  def index
    @voters = Voters.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @voters }
    end
  end

  # GET /voters/1
  # GET /voters/1.xml
  def show
    @voters = Voters.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @voters }
    end
  end

  # GET /voters/new
  # GET /voters/new.xml
  def new
    @voters = Voters.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @voters }
    end
  end

  # GET /voters/1/edit
  def edit
    @voters = Voters.find(params[:id])
  end

  # POST /voters
  # POST /voters.xml
  def create
    @voters = Voters.new(params[:voters])

    respond_to do |format|
      if @voters.save
        flash[:notice] = 'Voters was successfully created.'
        format.html { redirect_to(@voters) }
        format.xml  { render :xml => @voters, :status => :created, :location => @voters }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @voters.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /voters/1
  # PUT /voters/1.xml
  def update
    @voters = Voters.find(params[:id])

    respond_to do |format|
      if @voters.update_attributes(params[:voters])
        flash[:notice] = 'Voters was successfully updated.'
        format.html { redirect_to(@voters) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @voters.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /voters/1
  # DELETE /voters/1.xml
  def destroy
    @voters = Voters.find(params[:id])
    @voters.destroy

    respond_to do |format|
      format.html { redirect_to(voters_url) }
      format.xml  { head :ok }
    end
  end
end
