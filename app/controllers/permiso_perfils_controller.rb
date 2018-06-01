class PermisoPerfilsController < ApplicationController
  before_action :set_permiso_perfil, only: [:show, :edit, :update, :destroy]

  # GET /permiso_perfils
  # GET /permiso_perfils.json
  def index
    @permiso_perfils = PermisoPerfil.all
  end

  # GET /permiso_perfils/1
  # GET /permiso_perfils/1.json
  def show
  end

  # GET /permiso_perfils/new
  def new
    @permiso_perfil = PermisoPerfil.new
  end

  # GET /permiso_perfils/1/edit
  def edit
  end

  # POST /permiso_perfils
  # POST /permiso_perfils.json
  def create
    @permiso_perfil = PermisoPerfil.new(permiso_perfil_params)

    respond_to do |format|
      if @permiso_perfil.save
        format.html { redirect_to @permiso_perfil, notice: 'Permiso perfil was successfully created.' }
        format.json { render :show, status: :created, location: @permiso_perfil }
      else
        format.html { render :new }
        format.json { render json: @permiso_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permiso_perfils/1
  # PATCH/PUT /permiso_perfils/1.json
  def update
    respond_to do |format|
      if @permiso_perfil.update(permiso_perfil_params)
        format.html { redirect_to @permiso_perfil, notice: 'Permiso perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @permiso_perfil }
      else
        format.html { render :edit }
        format.json { render json: @permiso_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permiso_perfils/1
  # DELETE /permiso_perfils/1.json
  def destroy
    @permiso_perfil.destroy
    respond_to do |format|
      format.html { redirect_to permiso_perfils_url, notice: 'Permiso perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permiso_perfil
      @permiso_perfil = PermisoPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permiso_perfil_params
      params.require(:permiso_perfil).permit(:perfil_id, :permiso_id, :concedido)
    end
end
