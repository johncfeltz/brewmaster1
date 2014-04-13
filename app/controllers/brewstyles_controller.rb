class BrewstylesController < ApplicationController
  # GET /brewstyles
  # GET /brewstyles.json
  def index
    @brewstyles = Brewstyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brewstyles }
    end
  end

  # GET /brewstyles/1
  # GET /brewstyles/1.json
  def show
    @brewstyle = Brewstyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brewstyle }
    end
  end

  # GET /brewstyles/new
  # GET /brewstyles/new.json
  def new
    @brewstyle = Brewstyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brewstyle }
    end
  end

  # GET /brewstyles/1/edit
  def edit
    @brewstyle = Brewstyle.find(params[:id])
  end

  # POST /brewstyles
  # POST /brewstyles.json
  def create
    @brewstyle = Brewstyle.new(params[:brewstyle])

    respond_to do |format|
      if @brewstyle.save
        format.html { redirect_to @brewstyle, notice: 'Brewstyle was successfully created.' }
        format.json { render json: @brewstyle, status: :created, location: @brewstyle }
      else
        format.html { render action: "new" }
        format.json { render json: @brewstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brewstyles/1
  # PUT /brewstyles/1.json
  def update
    @brewstyle = Brewstyle.find(params[:id])

    respond_to do |format|
      if @brewstyle.update_attributes(params[:brewstyle])
        format.html { redirect_to @brewstyle, notice: 'Brewstyle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brewstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brewstyles/1
  # DELETE /brewstyles/1.json
  def destroy
    @brewstyle = Brewstyle.find(params[:id])
    @brewstyle.destroy

    respond_to do |format|
      format.html { redirect_to brewstyles_url }
      format.json { head :no_content }
    end
  end
end
