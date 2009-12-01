class GadminsController < ApplicationController
  # GET /gadmins
  # GET /gadmins.xml
  def index
    @gadmins = Gadmin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gadmins }
    end
  end

  # GET /gadmins/1
  # GET /gadmins/1.xml
  def show
    @gadmin = Gadmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gadmin }
    end
  end

  # GET /gadmins/new
  # GET /gadmins/new.xml
  def new
    @gadmin = Gadmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gadmin }
    end
  end

  # GET /gadmins/1/edit
  def edit
    @gadmin = Gadmin.find(params[:id])
  end

  # POST /gadmins
  # POST /gadmins.xml
  def create
    @gadmin = Gadmin.new(params[:gadmin])

    respond_to do |format|
      if @gadmin.save
        flash[:notice] = 'Gadmin was successfully created.'
        format.html { redirect_to(@gadmin) }
        format.xml  { render :xml => @gadmin, :status => :created, :location => @gadmin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gadmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gadmins/1
  # PUT /gadmins/1.xml
  def update
    @gadmin = Gadmin.find(params[:id])

    respond_to do |format|
      if @gadmin.update_attributes(params[:gadmin])
        flash[:notice] = 'Gadmin was successfully updated.'
        format.html { redirect_to(@gadmin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gadmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gadmins/1
  # DELETE /gadmins/1.xml
  def destroy
    @gadmin = Gadmin.find(params[:id])
    @gadmin.destroy

    respond_to do |format|
      format.html { redirect_to(gadmins_url) }
      format.xml  { head :ok }
    end
  end
end
