class CargosController < ApplicationController
  before_action :set_cargo, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Cargos", :cargos_path
  # GET /cargos
  # GET /cargos.json
  def index
    @cargos = Cargo.all
  end

  # GET /cargos/1
  # GET /cargos/1.json
  def show
    add_breadcrumb "Detalles", @cargos
  end

  # GET /cargos/new
  def new
    @cargo = Cargo.new
    add_breadcrumb "Nuevo", new_cargo_path()
  end

  # GET /cargos/1/edit
  def edit
    add_breadcrumb "Editar", edit_cargo_path()
  end

  # POST /cargos
  # POST /cargos.json
  def create
    @cargo = Cargo.new(cargo_params)

    respond_to do |format|
      if @cargo.save
        format.html { redirect_to cargos_path, notice: 'Cargo creado exitosamente' }
        format.json { render :show, status: :created, location: @cargo }
      else
        format.html { render :new }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cargos/1
  # PATCH/PUT /cargos/1.json
  def update
    respond_to do |format|
      if @cargo.update(cargo_params)
        format.html { redirect_to cargos_path, notice: 'Cargo actualizado exitosamente' }
        format.json { render :show, status: :ok, location: @cargo }
      else
        format.html { render :edit }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargos/1
  # DELETE /cargos/1.json
  def destroy
    @cargo.destroy
    respond_to do |format|
      format.html { redirect_to cargos_url, notice: 'Cargo eliminado' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cargo
    @cargo = Cargo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cargo_params
    params.require(:cargo).permit(:codigo, :nombre, :activo, :departamento_id)
  end
end
