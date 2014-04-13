class IngredientsourcesController < ApplicationController
  # GET /ingredientsources
  # GET /ingredientsources.json
  def index
    @ingredientsources = Ingredientsource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredientsources }
    end
  end

  # GET /ingredientsources/1
  # GET /ingredientsources/1.json
  def show
    @ingredientsource = Ingredientsource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredientsource }
    end
  end

  # GET /ingredientsources/new
  # GET /ingredientsources/new.json
  def new
    @ingredientsource = Ingredientsource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredientsource }
    end
  end

  # GET /ingredientsources/1/edit
  def edit
    @ingredientsource = Ingredientsource.find(params[:id])
  end

  # POST /ingredientsources
  # POST /ingredientsources.json
  def create
    @ingredientsource = Ingredientsource.new(params[:ingredientsource])

    respond_to do |format|
      if @ingredientsource.save
        format.html { redirect_to @ingredientsource, notice: 'Ingredientsource was successfully created.' }
        format.json { render json: @ingredientsource, status: :created, location: @ingredientsource }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredientsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredientsources/1
  # PUT /ingredientsources/1.json
  def update
    @ingredientsource = Ingredientsource.find(params[:id])

    respond_to do |format|
      if @ingredientsource.update_attributes(params[:ingredientsource])
        format.html { redirect_to @ingredientsource, notice: 'Ingredientsource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredientsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredientsources/1
  # DELETE /ingredientsources/1.json
  def destroy
    @ingredientsource = Ingredientsource.find(params[:id])
    @ingredientsource.destroy

    respond_to do |format|
      format.html { redirect_to ingredientsources_url }
      format.json { head :no_content }
    end
  end
end
