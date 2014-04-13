class IngredientclassesController < ApplicationController
  # GET /ingredientclasses
  # GET /ingredientclasses.json
  def index
    @ingredientclasses = Ingredientclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredientclasses }
    end
  end

  # GET /ingredientclasses/1
  # GET /ingredientclasses/1.json
  def show
    @ingredientclass = Ingredientclass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredientclass }
    end
  end

  # GET /ingredientclasses/new
  # GET /ingredientclasses/new.json
  def new
    @ingredientclass = Ingredientclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredientclass }
    end
  end

  # GET /ingredientclasses/1/edit
  def edit
    @ingredientclass = Ingredientclass.find(params[:id])
  end

  # POST /ingredientclasses
  # POST /ingredientclasses.json
  def create
    @ingredientclass = Ingredientclass.new(params[:ingredientclass])

    respond_to do |format|
      if @ingredientclass.save
        format.html { redirect_to @ingredientclass, notice: 'Ingredientclass was successfully created.' }
        format.json { render json: @ingredientclass, status: :created, location: @ingredientclass }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredientclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredientclasses/1
  # PUT /ingredientclasses/1.json
  def update
    @ingredientclass = Ingredientclass.find(params[:id])

    respond_to do |format|
      if @ingredientclass.update_attributes(params[:ingredientclass])
        format.html { redirect_to @ingredientclass, notice: 'Ingredientclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredientclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredientclasses/1
  # DELETE /ingredientclasses/1.json
  def destroy
    @ingredientclass = Ingredientclass.find(params[:id])
    @ingredientclass.destroy

    respond_to do |format|
      format.html { redirect_to ingredientclasses_url }
      format.json { head :no_content }
    end
  end
end
