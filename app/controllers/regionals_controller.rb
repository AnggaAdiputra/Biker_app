class RegionalsController < ApplicationController
  # GET /regionals
  # GET /regionals.json
  def index
    @regionals = Regional.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regionals }
    end
  end

  # GET /regionals/1
  # GET /regionals/1.json
  def show
    @regional = Regional.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regional }
    end
  end

  # GET /regionals/new
  # GET /regionals/new.json
  def new
    @regional = Regional.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regional }
    end
  end

  # GET /regionals/1/edit
  def edit
    @regional = Regional.find(params[:id])
  end

  # POST /regionals
  # POST /regionals.json
  def create
    @regional = Regional.new(params[:regional])

    respond_to do |format|
      if @regional.save
        format.html { redirect_to @regional, notice: 'Regional was successfully created.' }
        format.json { render json: @regional, status: :created, location: @regional }
      else
        format.html { render action: "new" }
        format.json { render json: @regional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regionals/1
  # PUT /regionals/1.json
  def update
    @regional = Regional.find(params[:id])

    respond_to do |format|
      if @regional.update_attributes(params[:regional])
        format.html { redirect_to @regional, notice: 'Regional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @regional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionals/1
  # DELETE /regionals/1.json
  def destroy
    @regional = Regional.find(params[:id])
    @regional.destroy

    respond_to do |format|
      format.html { redirect_to regionals_url }
      format.json { head :no_content }
    end
  end
end
