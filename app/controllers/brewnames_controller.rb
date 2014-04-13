class BrewnamesController < ApplicationController
  # GET /brewnames
  # GET /brewnames.json
  def index
    @brewnames = Brewname.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brewnames }
    end
  end

  # GET /brewnames/1
  # GET /brewnames/1.json
  def show
    @brewname = Brewname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brewname }
    end
  end

  # GET /brewnames/new
  # GET /brewnames/new.json
  def new
    @brewname = Brewname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brewname }
    end
  end

  # GET /brewnames/1/edit
  def edit
    @brewname = Brewname.find(params[:id])
  end

  # POST /brewnames
  # POST /brewnames.json
  def create
    @brewname = Brewname.new(params[:brewname])

    respond_to do |format|
      if @brewname.save
        format.html { redirect_to @brewname, notice: 'Brewname was successfully created.' }
        format.json { render json: @brewname, status: :created, location: @brewname }
      else
        format.html { render action: "new" }
        format.json { render json: @brewname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brewnames/1
  # PUT /brewnames/1.json
  def update
    @brewname = Brewname.find(params[:id])

    respond_to do |format|
      if @brewname.update_attributes(params[:brewname])
        format.html { redirect_to @brewname, notice: 'Brewname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brewname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brewnames/1
  # DELETE /brewnames/1.json
  def destroy
    @brewname = Brewname.find(params[:id])
    @brewname.destroy

    respond_to do |format|
      format.html { redirect_to brewnames_url }
      format.json { head :no_content }
    end
  end
end
