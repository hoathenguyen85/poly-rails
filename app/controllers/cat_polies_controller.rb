class CatPoliesController < ApplicationController
  before_action :set_cat_poly, only: [:show, :edit, :update, :destroy]

  # GET /cat_polies
  # GET /cat_polies.json
  def index
    @cat_polies = CatPoly.all
  end

  # GET /cat_polies/1
  # GET /cat_polies/1.json
  def show
  end

  # GET /cat_polies/new
  def new
    @cat_poly = CatPoly.new
  end

  # GET /cat_polies/1/edit
  def edit
  end

  # POST /cat_polies
  # POST /cat_polies.json
  def create
    @cat_poly = CatPoly.new(cat_poly_params)

    respond_to do |format|
      if @cat_poly.save
        format.html { redirect_to @cat_poly, notice: 'Cat poly was successfully created.' }
        format.json { render :show, status: :created, location: @cat_poly }
      else
        format.html { render :new }
        format.json { render json: @cat_poly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_polies/1
  # PATCH/PUT /cat_polies/1.json
  def update
    respond_to do |format|
      if @cat_poly.update(cat_poly_params)
        format.html { redirect_to @cat_poly, notice: 'Cat poly was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_poly }
      else
        format.html { render :edit }
        format.json { render json: @cat_poly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_polies/1
  # DELETE /cat_polies/1.json
  def destroy
    @cat_poly.destroy
    respond_to do |format|
      format.html { redirect_to cat_polies_url, notice: 'Cat poly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_poly
      @cat_poly = CatPoly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_poly_params
      params.require(:cat_poly).permit(:dog_poly, :fish_poly)
    end
end
