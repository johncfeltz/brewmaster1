class RecipesourcesController < ApplicationController
  # GET /recipesources
  # GET /recipesources.json
  def index
    @recipesources = Recipesource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipesources }
    end
  end

  # GET /recipesources/1
  # GET /recipesources/1.json
  def show
    @recipesource = Recipesource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipesource }
    end
  end

  # GET /recipesources/new
  # GET /recipesources/new.json
  def new
    @recipesource = Recipesource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipesource }
    end
  end

  # GET /recipesources/1/edit
  def edit
    @recipesource = Recipesource.find(params[:id])
  end

  # POST /recipesources
  # POST /recipesources.json
  def create
    @recipesource = Recipesource.new(params[:recipesource])

    respond_to do |format|
      if @recipesource.save
        format.html { redirect_to @recipesource, notice: 'Recipesource was successfully created.' }
        format.json { render json: @recipesource, status: :created, location: @recipesource }
      else
        format.html { render action: "new" }
        format.json { render json: @recipesource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipesources/1
  # PUT /recipesources/1.json
  def update
    @recipesource = Recipesource.find(params[:id])

    respond_to do |format|
      if @recipesource.update_attributes(params[:recipesource])
        format.html { redirect_to @recipesource, notice: 'Recipesource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipesource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipesources/1
  # DELETE /recipesources/1.json
  def destroy
    @recipesource = Recipesource.find(params[:id])
    @recipesource.destroy

    respond_to do |format|
      format.html { redirect_to recipesources_url }
      format.json { head :no_content }
    end
  end
end
