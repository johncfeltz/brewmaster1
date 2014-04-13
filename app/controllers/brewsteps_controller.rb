class BrewstepsController < ApplicationController
  # GET /brewsteps
  # GET /brewsteps.json
  def index
    @brewsteps = Brewstep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brewsteps }
    end
  end

  # GET /brewsteps/1
  # GET /brewsteps/1.json
  def show
    @brewstep = Brewstep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brewstep }
    end
  end

  # GET /brewsteps/new
  # GET /brewsteps/new.json
  def new
    @brewstep = Brewstep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brewstep }
    end
  end

  # GET /brewsteps/1/edit
  def edit
    @brewstep = Brewstep.find(params[:id])
  end

  # POST /brewsteps
  # POST /brewsteps.json
  def create
    @brewstep = Brewstep.new(params[:brewstep])

    respond_to do |format|
      if @brewstep.save
        format.html { redirect_to @brewstep, notice: 'Brewstep was successfully created.' }
        format.json { render json: @brewstep, status: :created, location: @brewstep }
      else
        format.html { render action: "new" }
        format.json { render json: @brewstep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brewsteps/1
  # PUT /brewsteps/1.json
  def update
    @brewstep = Brewstep.find(params[:id])

    respond_to do |format|
      if @brewstep.update_attributes(params[:brewstep])
        format.html { redirect_to @brewstep, notice: 'Brewstep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brewstep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brewsteps/1
  # DELETE /brewsteps/1.json
  def destroy
    @brewstep = Brewstep.find(params[:id])
    @brewstep.destroy

    respond_to do |format|
      format.html { redirect_to brewsteps_url }
      format.json { head :no_content }
    end
  end
end
