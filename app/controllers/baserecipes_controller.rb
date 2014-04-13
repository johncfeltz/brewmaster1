class BaserecipesController < ApplicationController
  # GET /baserecipes
  # GET /baserecipes.json
  def index
    @baserecipes = Baserecipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baserecipes }
    end
  end

  # GET /baserecipes/1
  # GET /baserecipes/1.json
  def show
    @baserecipe = Baserecipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baserecipe }
    end
  end

  # GET /baserecipes/new
  # GET /baserecipes/new.json
  def new
    @baserecipe = Baserecipe.new
    
    #list to pass in for building drop-down box
    @rs = Recipesource.find(:all, :order => "source").map {|s| [s.source, s.id]} 
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baserecipe }
    end
  end

  # GET /baserecipes/1/edit
  def edit
    @rs = Recipesource.find(:all, :order => "source").map {|s| [s.source, s.id]} 
    @baserecipe = Baserecipe.find(params[:id])
  end

  # POST /baserecipes
  # POST /baserecipes.json
  def create
    @baserecipe = Baserecipe.new(params[:baserecipe])

    respond_to do |format|
      if @baserecipe.save
        format.html { redirect_to @baserecipe, notice: 'Baserecipe was successfully created.' }
        format.json { render json: @baserecipe, status: :created, location: @baserecipe }
      else
        format.html { render action: "new" }
        format.json { render json: @baserecipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baserecipes/1
  # PUT /baserecipes/1.json
  def update
    @baserecipe = Baserecipe.find(params[:id])

    respond_to do |format|
      if @baserecipe.update_attributes(params[:baserecipe])
        format.html { redirect_to @baserecipe, notice: 'Baserecipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baserecipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baserecipes/1
  # DELETE /baserecipes/1.json
  def destroy
    @baserecipe = Baserecipe.find(params[:id])
    @baserecipe.destroy

    respond_to do |format|
      format.html { redirect_to baserecipes_url }
      format.json { head :no_content }
    end
  end
end
