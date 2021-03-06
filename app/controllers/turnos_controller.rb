#encoding: UTF-8
class TurnosController < ApplicationController
  before_action :set_turno, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Turnos", :turnos_path
  # GET /turnos
  # GET /turnos.json
  def index
    @turnos = Turno.all
  end

  # GET /turnos/1
  # GET /turnos/1.json
  def show
  end

  # GET /turnos/new
  def new
    add_breadcrumb "Nuevo", new_turno_path
    @turno = Turno.new
  end

  # GET /turnos/1/edit
  def edit
    add_breadcrumb "Editar", edit_turno_path()
  end

  # POST /turnos
  # POST /turnos.json
  def create
    @turno = Turno.new(turno_params)

    respond_to do |format|
      if @turno.save
        format.html { redirect_to turnos_path, notice: 'Turno was successfully created.' }
        format.json { render :show, status: :created, location: @turno }
        flash.now[:alert] = "Turno Creado"
      else
        format.html { render :new }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turnos/1
  # PATCH/PUT /turnos/1.json
  def update
    respond_to do |format|
      if @turno.update(turno_params)
        format.html { redirect_to turnos_path, notice: 'Turno was successfully updated.' }
        format.json { render :show, status: :ok, location: @turno }
      else
        format.html { render :edit }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turnos/1
  # DELETE /turnos/1.json
  def destroy
    @turno.destroy
    respond_to do |format|
      format.html { redirect_to turnos_url, notice: 'Turno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_turno
    @turno = Turno.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def turno_params
    params.require(:turno).permit(:codigo, :nombre, :entrada, :inicio_descanso, :fin_descanso, :salida, :descanso, :activo)
  end
end
