class SucursalesController < ApplicationController
  before_action :set_sucursale, only: %i[ show edit update destroy ]

  # GET /sucursales or /sucursales.json
  def index
    @sucursales = Sucursale.all
  end

  # GET /sucursales/1 or /sucursales/1.json
  def show
  end

  # GET /sucursales/new
  def new
    @sucursale = Sucursale.new
  end

  # GET /sucursales/1/edit
  def edit
  end

  # POST /sucursales or /sucursales.json
  def create
    @sucursale = Sucursale.new(sucursale_params)

    respond_to do |format|
      if @sucursale.save
        format.html { redirect_to sucursale_url(@sucursale), notice: "Sucursale was successfully created." }
        format.json { render :show, status: :created, location: @sucursale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sucursale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sucursales/1 or /sucursales/1.json
  def update
    respond_to do |format|
      if @sucursale.update(sucursale_params)
        format.html { redirect_to sucursale_url(@sucursale), notice: "Sucursale was successfully updated." }
        format.json { render :show, status: :ok, location: @sucursale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sucursale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursales/1 or /sucursales/1.json
  def destroy
    @sucursale.destroy

    respond_to do |format|
      format.html { redirect_to sucursales_url, notice: "Sucursale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursale
      @sucursale = Sucursale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sucursale_params
      params.require(:sucursale).permit(:nombre, :direccion, :telefono)
    end
end
