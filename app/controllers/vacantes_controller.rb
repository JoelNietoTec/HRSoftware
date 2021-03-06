#encoding: UTF-8
class VacantesController < ApplicationController
  before_action :set_vacante, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Vacantes", :vacantes_path
  # GET /vacantes
  # GET /vacantes.json
  def index
    @vacantes = Vacante.search(params[:search],params[:page])
  end

  # GET /vacantes/1
  # GET /vacantes/1.json
  def show
    add_breadcrumb "Detalles", @vacante
  end

  # GET /vacantes/new
  def new
    @vacante = Vacante.new
    add_breadcrumb "Nuevo", :new_vacante_path
  end

  # GET /vacantes/1/edit
  def edit
    add_breadcrumb "Editar", :edit_vacante_path
  end

  # POST /vacantes
  # POST /vacantes.json
  def create
    @vacante = Vacante.new(vacante_params)

    respond_to do |format|
      if @vacante.save
        format.html { redirect_to @vacante, notice: 'Vacante creada' }
        format.json { render :show, status: :created, location: @vacante }
      else
        format.html { render :new }
        format.json { render json: @vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacantes/1
  # PATCH/PUT /vacantes/1.json
  def update
    respond_to do |format|
      if @vacante.update(vacante_params)
        format.html { redirect_to @vacante, notice: 'Vacante actualizada' }
        format.json { render :show, status: :ok, location: @vacante }
      else
        format.html { render :edit }
        format.json { render json: @vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacantes/1
  # DELETE /vacantes/1.json
  def destroy
    @vacante.destroy
    respond_to do |format|
      format.html { redirect_to vacantes_url, notice: 'Vacante eliminada' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vacante
    @vacante = Vacante.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vacante_params
    params.require(:vacante).permit(:cargo_id, :fecha_inicio, :fecha_vencimiento, :activo, :area_profesional_id, :descripcion_cargo, :provincia_id, :distrito_id, :nivel_studio_id, :direccion, :salario_oferta, :tipo_puesto_id, :grupo_pago_id)
  end
end
