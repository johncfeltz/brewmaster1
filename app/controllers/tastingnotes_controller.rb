class TastingnotesController < ApplicationController
  # GET /tastingnotes
  # GET /tastingnotes.json
  def index
    @tastingnotes = Tastingnote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tastingnotes }
    end
  end

  # GET /tastingnotes/1
  # GET /tastingnotes/1.json
  def show
    @tastingnote = Tastingnote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tastingnote }
    end
  end

  # GET /tastingnotes/new
  # GET /tastingnotes/new.json
  def new
    @tastingnote = Tastingnote.new

    #List for select statement
    @b = Batch.find(:all, :order => "id").map {|s| [s.num_name_date, s.id]} 
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tastingnote }
    end
  end

  # GET /tastingnotes/1/edit
  def edit
    @tastingnote = Tastingnote.find(params[:id])
  end

  # POST /tastingnotes
  # POST /tastingnotes.json
  def create
    @tastingnote = Tastingnote.new(params[:tastingnote])

    respond_to do |format|
      if @tastingnote.save
        format.html { redirect_to @tastingnote, notice: 'Tastingnote was successfully created.' }
        format.json { render json: @tastingnote, status: :created, location: @tastingnote }
      else
        format.html { render action: "new" }
        format.json { render json: @tastingnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tastingnotes/1
  # PUT /tastingnotes/1.json
  def update
    @tastingnote = Tastingnote.find(params[:id])

    respond_to do |format|
      if @tastingnote.update_attributes(params[:tastingnote])
        format.html { redirect_to @tastingnote, notice: 'Tastingnote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tastingnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tastingnotes/1
  # DELETE /tastingnotes/1.json
  def destroy
    @tastingnote = Tastingnote.find(params[:id])
    @tastingnote.destroy

    respond_to do |format|
      format.html { redirect_to tastingnotes_url }
      format.json { head :no_content }
    end
  end
end
