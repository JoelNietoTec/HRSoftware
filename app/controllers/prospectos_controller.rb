class ProspectosController < ApplicationController
  before_action :set_prospecto, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Prospectos", :prospectos_path
  # GET /prospectos
  # GET /prospectos.json
  def index
    @prospectos = Prospecto.find_by_sql('SELECT prospectos.*, prospecto_estudios.nivel_estudio_id, prospecto_experiencia.cargo FROM prospectos LEFT JOIN prospecto_estudios on prospecto_estudios.prospecto_id = prospectos.id and prospecto_estudios.nivel_estudio_id = (SELECT max(nivel_estudio_id) from prospecto_estudios where prospecto_estudios.prospecto_id = prospectos.id)
LEFT JOIN prospecto_experiencia on prospecto_experiencia.prospecto_id = prospectos.id and prospecto_experiencia.fecha_ingreso = (SELECT max(fecha_ingreso) from prospecto_experiencia where prospecto_experiencia.prospecto_id = prospectos.id)')
  end

  # GET /prospectos/1
  # GET /prospectos/1.json
  def show
    add_breadcrumb "Detalles", @prospectos
  end

  # GET /prospectos/new
  def new
    @prospecto = Prospecto.new
    add_breadcrumb "Nuevo", new_prospecto_path
  end

  # GET /prospectos/1/edit
  def edit
    add_breadcrumb "Editar", edit_prospecto_path()
  end

  # POST /prospectos
  # POST /prospectos.json
  def create
    @prospecto = Prospecto.new(prospecto_params)

    respond_to do |format|
      if @prospecto.save
        format.html { redirect_to @prospecto, notice: 'Prospecto creado' }
        format.json { render :show, status: :created, location: @prospecto }
      else
        format.html { render :new }
        format.json { render json: @prospecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospectos/1
  # PATCH/PUT /prospectos/1.json
  def update
    respond_to do |format|
      if @prospecto.update(prospecto_params)
        format.html { redirect_to @prospecto, notice: 'Prospecto actualizado' }
        format.json { render :show, status: :ok, location: @prospecto }
      else
        format.html { render :edit }
        format.json { render json: @prospecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectos/1
  # DELETE /prospectos/1.json
  def destroy
    @prospecto.destroy
    respond_to do |format|
      format.html { redirect_to prospectos_url, notice: 'Prospecto eliminado' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_prospecto
    @prospecto = Prospecto.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def prospecto_params
    params.require(:prospecto).permit(:nombres, :apellidos, :cedula, :seguro_social, :sexo_id, :aspiracion_salario, :estado_civil_id, :direccion, :fecha_nacimiento, :licencia_id, :nacionalidad, :email, :disponible, :area_profesional_id,
      prospecto_telefonos_attributes: [
        :id, :tipos_telefono_id, :telefono, :_destroy
        ],
      prospecto_experiencias_attributes: [
        :id, :empresa, :cargo, :descripcion_cargo, :fecha_ingreso, :fecha_salida, :actual, :ultimo_salario, :_destroy
        ],
      prospecto_estudios_attributes: [
        :id, :nivel_estudio_id, :institucion, :nombre_titulo, :fecha_inicio, :fecha_fin, :status_estudio_id, :_destroy
        ],
      prospecto_idiomas_attributes: [
        :id, :idioma_id, :nivel_oral_id, :nivel_escrito_id, :_destroy
        ],
      prospecto_cursos_attributes: [
        :id, :institucion, :titulo_curso, :descripcion_curso, :anio_curso, :_destroy
        ])
  end
end
