#encoding: UTF-8
class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Empleados", :empleados_path
  # GET /empleados
  # GET /empleados.json


  def index
    @empleados = Empleado.all
  end

  # GET /empleados/1
  # GET /empleados/1.json
  def show
    add_breadcrumb (@empleado.nombres + ' ' + @empleado.apellidos), @empleado
  end

  # GET /empleados/new
  def new
    @empleado = Empleado.new
    add_breadcrumb "Nuevo", new_empleado_path
  end

  # GET /empleados/1/edit
  def edit
    add_breadcrumb "Editar", edit_empleado_path
  end

  # POST /empleados
  # POST /empleados.json
  def create
    @empleado = Empleado.new(empleado_params)

    respond_to do |format|
      if @empleado.save
        format.html { redirect_to @empleado, notice: 'Empleado creado' }
        format.json { render :show, status: :created, location: @empleado }
      else
        format.html { render :new }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleados/1
  # PATCH/PUT /empleados/1.json
  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.html { redirect_to @empleado, notice: 'Empleado actualizado' }
        format.json { render :show, status: :ok, location: @empleado }
      else
        format.html { render :edit }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleados/1
  # DELETE /empleados/1.json
  def destroy
    @empleado.destroy
    respond_to do |format|
      format.html { redirect_to empleados_url, notice: 'Empleado eliminado' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def empleado_params
    params.require(:empleado).permit(:codigo, :nombres, :apellidos, :cedula, :seguro_social, :dv, :clave_isr, :grupo_pago_id, :status_id, :tipo_salario_id, :tipo_empleado_id, :salario_pactado, :horas_base, :fecha_ingreso, :fecha_liquidacion, :sucursal_id, :departamento_id, :centro_costo_id, :proyecto_id, :fase_id, :seccion_id, :fecha_nacimiento, :nacionalidad_id, :cargo_id, :direccion, :email, :telefono, :sexo_id, :estado_civil_id, :forma_pago_id, :sector_id, :avatar)
  end
end
