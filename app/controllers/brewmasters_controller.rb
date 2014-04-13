class BrewmastersController < ApplicationController
  # GET /brewmasters
  # GET /brewmasters.json
  def index
    @brewmasters = Brewmaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brewmasters }
    end
  end

  # GET /brewmasters/1
  # GET /brewmasters/1.json
  def show
    @brewmaster = Brewmaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brewmaster }
    end
  end

  # GET /brewmasters/new
  # GET /brewmasters/new.json
  def new
    @brewmaster = Brewmaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brewmaster }
    end
  end

  # GET /brewmasters/1/edit
  def edit
    @brewmaster = Brewmaster.find(params[:id])
  end

  # POST /brewmasters
  # POST /brewmasters.json
  def create
    @brewmaster = Brewmaster.new(params[:brewmaster])

    respond_to do |format|
      if @brewmaster.save
        format.html { redirect_to @brewmaster, notice: 'Brewmaster was successfully created.' }
        format.json { render json: @brewmaster, status: :created, location: @brewmaster }
      else
        format.html { render action: "new" }
        format.json { render json: @brewmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brewmasters/1
  # PUT /brewmasters/1.json
  def update
    @brewmaster = Brewmaster.find(params[:id])

    respond_to do |format|
      if @brewmaster.update_attributes(params[:brewmaster])
        format.html { redirect_to @brewmaster, notice: 'Brewmaster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brewmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brewmasters/1
  # DELETE /brewmasters/1.json
  def destroy
    @brewmaster = Brewmaster.find(params[:id])
    @brewmaster.destroy

    respond_to do |format|
      format.html { redirect_to brewmasters_url }
      format.json { head :no_content }
    end
  end
end
