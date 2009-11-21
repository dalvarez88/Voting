class BallotsController < ApplicationController
  # GET /ballots
  # GET /ballots.xml
  def index
    @ballots = Ballot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ballots }
    end
  end

  # GET /ballots/1
  # GET /ballots/1.xml
  def show
    @ballot = Ballot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ballot }
    end
  end

  # GET /ballots/new
  # GET /ballots/new.xml
  def new
    @ballot = Ballot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ballot }
    end
  end

  # GET /ballots/1/edit
  def edit
    @ballot = Ballot.find(params[:id])
  end

  # POST /ballots
  # POST /ballots.xml
  def create
    @ballot = Ballot.new(params[:ballot])

    respond_to do |format|
      if @ballot.save
        flash[:notice] = 'Ballot was successfully created.'
        format.html { redirect_to(@ballot) }
        format.xml  { render :xml => @ballot, :status => :created, :location => @ballot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ballot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ballots/1
  # PUT /ballots/1.xml
  def update
    @ballot = Ballot.find(params[:id])

    respond_to do |format|
      if @ballot.update_attributes(params[:ballot])
        flash[:notice] = 'Ballot was successfully updated.'
        format.html { redirect_to(@ballot) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ballot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ballots/1
  # DELETE /ballots/1.xml
  def destroy
    @ballot = Ballot.find(params[:id])
    @ballot.destroy

    respond_to do |format|
      format.html { redirect_to(ballots_url) }
      format.xml  { head :ok }
    end
  end
end
