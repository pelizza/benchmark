class VehicleStatesController < ApplicationController
  # GET /vehicle_states
  # GET /vehicle_states.xml
  def index
    @vehicle_states = VehicleState.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vehicle_states }
    end
  end

  # GET /vehicle_states/1
  # GET /vehicle_states/1.xml
  def show
    @vehicle_state = VehicleState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vehicle_state }
    end
  end

  # GET /vehicle_states/new
  # GET /vehicle_states/new.xml
  def new
    @vehicle_state = VehicleState.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vehicle_state }
    end
  end

  # GET /vehicle_states/1/edit
  def edit
    @vehicle_state = VehicleState.find(params[:id])
  end

  # POST /vehicle_states
  # POST /vehicle_states.xml
  def create
    @vehicle_state = VehicleState.new(params[:vehicle_state])

    respond_to do |format|
      if @vehicle_state.save
        format.html { redirect_to(@vehicle_state, :notice => 'Vehicle state was successfully created.') }
        format.xml  { render :xml => @vehicle_state, :status => :created, :location => @vehicle_state }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vehicle_state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_states/1
  # PUT /vehicle_states/1.xml
  def update
    @vehicle_state = VehicleState.find(params[:id])

    respond_to do |format|
      if @vehicle_state.update_attributes(params[:vehicle_state])
        format.html { redirect_to(@vehicle_state, :notice => 'Vehicle state was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vehicle_state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_states/1
  # DELETE /vehicle_states/1.xml
  def destroy
    @vehicle_state = VehicleState.find(params[:id])
    @vehicle_state.destroy

    respond_to do |format|
      format.html { redirect_to(vehicle_states_url) }
      format.xml  { head :ok }
    end
  end
end
