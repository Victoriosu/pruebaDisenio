class DonacionsController < ApplicationController
  before_action :set_Donacion, only: [:show, :edit, :update, :destroy]

  # GET /Donacions
  # GET /Donacions.json
  def index
    @Donacions = Donacion.all
  end

  # GET /Donacions/1
  # GET /Donacions/1.json
  def show
  end

  # GET /Donacions/new
  def new
    @Donacion = Donacion.new
  end

  # GET /Donacions/1/edit
  def edit
  end

  # POST /Donacions
  # POST /Donacions.json
  def create
    @Donacion = Donacion.new(Donacion_params)

    respond_to do |format|
      if @Donacion.save
        format.html { redirect_to @Donacion, notice: 'Donación creada exitosamente.' }
        format.json { render :show, status: :created, location: @Donacion }
      else
        format.html { render :new }
        format.json { render json: @Donacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Donacions/1
  # PATCH/PUT /Donacions/1.json
  def update
    respond_to do |format|
      if @Donacion.update(Donacion_params)
        format.html { redirect_to @Donacion, notice: 'Donación editada exitosamente.' }
        format.json { render :show, status: :ok, location: @Donacion }
      else
        format.html { render :edit }
        format.json { render json: @Donacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Donacions/1
  # DELETE /Donacions/1.json
  def destroy
    @Donacion.destroy
    respond_to do |format|
      format.html { redirect_to Donacions_url, notice: 'Donacion eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Donacion
      @Donacion = Donacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Donacion_params
      params.require(:Donacion).permit(:user_id, :monto)
    end
end
