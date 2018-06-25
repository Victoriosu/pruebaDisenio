class ActividadsController < ApplicationController
  before_action :set_actividad, only: [:show, :edit, :update, :destroy]

  # GET /actividads
  # GET /actividads.json
  def index
    @actividads = Actividad.all
  end

  def pendientes
    @actividads = Actividad.where(estado: "Pendiente", user_id: current_user.id)

    render :index
  end

  def aprobadas
    @actividads = Actividad.where(estado: "Aprobada")

    render :index
  end

  def aprobar_actividad
    @actividad = Actividad.find(params[:actividad_id])
    @actividad.estado = "Aprobada"
    
    @actividads = Actividad.all

    respond_to do |format|
      if @actividad.save
        format.html { redirect_to '/actividads', notice: 'Se aprobó la actividad exitosamente.' }
      else
        format.html { redirect_to '/actividads', alert: @actividad.errors.messages }
      end
    end
  end

  # GET /actividads/1
  # GET /actividads/1.json
  def show
  end

  # GET /actividads/new
  def new
    @actividad = Actividad.new
  end

  # GET /actividads/1/edit
  def edit
  end

  # POST /actividads
  # POST /actividads.json
  def create
    @actividad = Actividad.new(actividad_params)

    respond_to do |format|
      if @actividad.save
        format.html { redirect_to '/actividades/pendientes', notice: 'Se creo la actividad exitosamente.' }
        format.json { render :show, status: :created, location: @actividad }
      else
        format.html { render :new }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividads/1
  # PATCH/PUT /actividads/1.json
  def update
    respond_to do |format|
      if @actividad.update(actividad_params)
        format.html { redirect_to @actividad, notice: 'Actividad was successfully updated.' }
        format.json { render :show, status: :ok, location: @actividad }
      else
        format.html { render :edit }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividads/1
  # DELETE /actividads/1.json
  def destroy
    @actividad.destroy
    respond_to do |format|
      format.html { redirect_to actividads_path, notice: 'Actividad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad
      @actividad = Actividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividad_params
      params.require(:actividad).permit(:nombre, :fecha, :estado, :user_id)
    end
end
