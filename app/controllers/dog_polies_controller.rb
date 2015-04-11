class DogPoliesController < ApplicationController
  before_action :set_dog_poly, only: [:show, :edit, :update, :destroy]

  # GET /dog_polies
  # GET /dog_polies.json
  def index
    @dog_polies = DogPoly.all
  end

  # GET /dog_polies/1
  # GET /dog_polies/1.json
  def show
  end

  # GET /dog_polies/new
  def new
    @dog_poly = DogPoly.new
  end

  # GET /dog_polies/1/edit
  def edit
  end

  # POST /dog_polies
  # POST /dog_polies.json
  def create
    @dog_poly = DogPoly.new(dog_poly_params)

    respond_to do |format|
      if @dog_poly.save
        format.html { redirect_to @dog_poly, notice: 'Dog poly was successfully created.' }
        format.json { render :show, status: :created, location: @dog_poly }
      else
        format.html { render :new }
        format.json { render json: @dog_poly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_polies/1
  # PATCH/PUT /dog_polies/1.json
  def update
    respond_to do |format|
      if @dog_poly.update(dog_poly_params)
        format.html { redirect_to @dog_poly, notice: 'Dog poly was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog_poly }
      else
        format.html { render :edit }
        format.json { render json: @dog_poly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_polies/1
  # DELETE /dog_polies/1.json
  def destroy
    @dog_poly.destroy
    respond_to do |format|
      format.html { redirect_to dog_polies_url, notice: 'Dog poly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_poly
      @dog_poly = DogPoly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_poly_params
      params[:dog_poly]
    end
end
