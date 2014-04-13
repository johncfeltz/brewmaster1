class ScoopsController < ApplicationController
  # GET /scoops
  # GET /scoops.json
  def index
    @scoops = Scoop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scoops }
    end
  end

  # GET /scoops/1
  # GET /scoops/1.json
  def show
    @scoop = Scoop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scoop }
    end
  end

  # GET /scoops/new
  # GET /scoops/new.json
  def new
    @scoop = Scoop.new

  #List to populate drop-down
    @in = Ingredient.find(:all, :order => "name").map {|s| [s.name_src_class, s.id]}
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scoop }
    end
  end

  # GET /scoops/1/edit
  def edit
    @scoop = Scoop.find(params[:id])
    
    #List to populate drop-down
    @in = Ingredient.find(:all, :order => "name").map {|s| [s.name_src_class, s.id]}

  end

  # POST /scoops
  # POST /scoops.json
  def create
    @scoop = Scoop.new(params[:scoop])

    respond_to do |format|
      if @scoop.save
        format.html { redirect_to @scoop, notice: 'Scoop was successfully created.' }
        format.json { render json: @scoop, status: :created, location: @scoop }
      else
        format.html { render action: "new" }
        format.json { render json: @scoop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scoops/1
  # PUT /scoops/1.json
  def update
    @scoop = Scoop.find(params[:id])

    respond_to do |format|
      if @scoop.update_attributes(params[:scoop])
        format.html { redirect_to @scoop, notice: 'Scoop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scoop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scoops/1
  # DELETE /scoops/1.json
  def destroy
    @scoop = Scoop.find(params[:id])
    @scoop.destroy

    respond_to do |format|
      format.html { redirect_to scoops_url }
      format.json { head :no_content }
    end
  end
end
