class CitytwonsController < ApplicationController
  before_action :set_citytwon, only: %i[ show edit update destroy ]

  # GET /citytwons or /citytwons.json
  def index
    @citytwons = Citytwon.all
  end

  # GET /citytwons/1 or /citytwons/1.json
  def show
  end

  # GET /citytwons/new
  def new
    @citytwon = Citytwon.new
  end

  # GET /citytwons/1/edit
  def edit
  end

  # POST /citytwons or /citytwons.json
  def create
    @citytwon = Citytwon.new(citytwon_params)

    respond_to do |format|
      if @citytwon.save
        format.html { redirect_to citytwon_url(@citytwon), notice: "Citytwon was successfully created." }
        format.json { render :show, status: :created, location: @citytwon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @citytwon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citytwons/1 or /citytwons/1.json
  def update
    respond_to do |format|
      if @citytwon.update(citytwon_params)
        format.html { redirect_to citytwon_url(@citytwon), notice: "Citytwon was successfully updated." }
        format.json { render :show, status: :ok, location: @citytwon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @citytwon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citytwons/1 or /citytwons/1.json
  def destroy
    @citytwon.destroy

    respond_to do |format|
      format.html { redirect_to citytwons_url, notice: "Citytwon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citytwon
      @citytwon = Citytwon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def citytwon_params
      params.require(:citytwon).permit(:title, :slug, :user_id)
    end
end
