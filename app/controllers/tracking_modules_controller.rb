class TrackingModulesController < ApplicationController
  # GET /tracking_modules
  # GET /tracking_modules.xml
  def index
    @tracking_modules = TrackingModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tracking_modules }
    end
  end

  # GET /tracking_modules/1
  # GET /tracking_modules/1.xml
  def show
    @tracking_module = TrackingModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tracking_module }
    end
  end

  # GET /tracking_modules/new
  # GET /tracking_modules/new.xml
  def new
    @tracking_module = TrackingModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tracking_module }
    end
  end

  # GET /tracking_modules/1/edit
  def edit
    @tracking_module = TrackingModule.find(params[:id])
  end

  # POST /tracking_modules
  # POST /tracking_modules.xml
  def create
    @tracking_module = TrackingModule.new(params[:tracking_module])

    respond_to do |format|
      if @tracking_module.save
        format.html { redirect_to(@tracking_module, :notice => 'Tracking module was successfully created.') }
        format.xml  { render :xml => @tracking_module, :status => :created, :location => @tracking_module }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tracking_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tracking_modules/1
  # PUT /tracking_modules/1.xml
  def update
    @tracking_module = TrackingModule.find(params[:id])

    respond_to do |format|
      if @tracking_module.update_attributes(params[:tracking_module])
        format.html { redirect_to(@tracking_module, :notice => 'Tracking module was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tracking_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tracking_modules/1
  # DELETE /tracking_modules/1.xml
  def destroy
    @tracking_module = TrackingModule.find(params[:id])
    @tracking_module.destroy

    respond_to do |format|
      format.html { redirect_to(tracking_modules_url) }
      format.xml  { head :ok }
    end
  end
end
