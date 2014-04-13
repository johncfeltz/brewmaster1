class BatchesController < ApplicationController
  # GET /batches
  # GET /batches.json
  def index
    @batches = Batch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @batches }
    end
  end

  # GET /batches/1
  # GET /batches/1.json
  def show
    @batch = Batch.find(params[:id])
    @scoops = Scoop.find(:all, :conditions => ["batch_id = ?", params[:id]], :order => "created_at")
    @brewsteps = Brewstep.find(:all, :conditions => ["batch_id = ?", params[:id]], :order => "created_at")
    @tastingnotes = Tastingnote.find(:all, :conditions => ["batch_id = ?", params[:id]], :order => "created_at")
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @batch }
    end
  end

  # GET /batches/new
  # GET /batches/new.json
  def new
    @batch = Batch.new
    #lists to pass in for building drop-down box
    @br = Baserecipe.find(:all, :order => "name").map {|s| [s.name, s.id]} 
    @bm = Brewmaster.find(:all, :order => "name").map {|s| [s.name, s.id]} 
    @bn = Brewname.find(:all, :order => "name").map {|s| [s.name, s.id]} 
    @bs = Brewstyle.find(:all, :order => "id").map {|s| [s.style, s.id]} 
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @batch }
    end
  end

  # GET /batches/1/edit
  def edit
    #lists to pass in for building drop-down box
    @br = Baserecipe.find(:all, :order => "name").map {|s| [s.name, s.id]} 
    @bm = Brewmaster.find(:all, :order => "name").map {|s| [s.name, s.id]} 
    @bn = Brewname.find(:all, :order => "name").map {|s| [s.name, s.id]} 
    @bs = Brewstyle.find(:all, :order => "id").map {|s| [s.style, s.id]} 
    
    @batch = Batch.find(params[:id])
  end

  # POST /batches
  # POST /batches.json
  def create
    @batch = Batch.new(params[:batch])

    respond_to do |format|
      if @batch.save
        format.html { redirect_to @batch, notice: 'Batch was successfully created.' }
        format.json { render json: @batch, status: :created, location: @batch }
      else
        format.html { render action: "new" }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /batches/1
  # PUT /batches/1.json
  def update
    @batch = Batch.find(params[:id])

    respond_to do |format|
      if @batch.update_attributes(params[:batch])
        format.html { redirect_to @batch, notice: 'Batch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batches/1
  # DELETE /batches/1.json
  def destroy
    @batch = Batch.find(params[:id])
    @batch.destroy

    respond_to do |format|
      format.html { redirect_to batches_url }
      format.json { head :no_content }
    end
  end
end
