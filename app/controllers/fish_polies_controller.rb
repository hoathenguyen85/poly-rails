class FishPoliesController < ApplicationController
  before_action :set_fish_poly, only: [:show, :edit, :update, :destroy]

  # GET /fish_polies
  # GET /fish_polies.json
  def index
    @fish_polies = FishPoly.all
  end

  # GET /fish_polies/1
  # GET /fish_polies/1.json
  def show
  end

  # GET /fish_polies/new
  def new
    @fish_poly = FishPoly.new
  end

  # GET /fish_polies/1/edit
  def edit
  end

  # POST /fish_polies
  # POST /fish_polies.json
  def create
    @fish_poly = FishPoly.new(fish_poly_params)

    respond_to do |format|
      if @fish_poly.save
        format.html { redirect_to @fish_poly, notice: 'Fish poly was successfully created.' }
        format.json { render :show, status: :created, location: @fish_poly }
      else
        format.html { render :new }
        format.json { render json: @fish_poly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fish_polies/1
  # PATCH/PUT /fish_polies/1.json
  def update
    respond_to do |format|
      if @fish_poly.update(fish_poly_params)
        format.html { redirect_to @fish_poly, notice: 'Fish poly was successfully updated.' }
        format.json { render :show, status: :ok, location: @fish_poly }
      else
        format.html { render :edit }
        format.json { render json: @fish_poly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fish_polies/1
  # DELETE /fish_polies/1.json
  def destroy
    @fish_poly.destroy
    respond_to do |format|
      format.html { redirect_to fish_polies_url, notice: 'Fish poly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fish_poly
      @fish_poly = FishPoly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fish_poly_params
      params[:fish_poly]
    end
end
