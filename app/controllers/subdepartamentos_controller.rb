class SubdepartamentosController < ApplicationController
  before_action :set_subdepartamento, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Sub-Departamentos", :subdepartamentos_path

  # GET /subdepartamentos
  # GET /subdepartamentos.json
  def index
    @subdepartamentos = Subdepartamento.all
  end

  # GET /subdepartamentos/1
  # GET /subdepartamentos/1.json
  def show
  end

  # GET /subdepartamentos/new
  def new
    add_breadcrumb "Nuevo", new_subdepartamento_path
    @subdepartamento = Subdepartamento.new
  end

  # GET /subdepartamentos/1/edit
  def edit
    add_breadcrumb "Editar", edit_subdepartamento_path
  end

  # POST /subdepartamentos
  # POST /subdepartamentos.json
  def create
    @subdepartamento = Subdepartamento.new(subdepartamento_params)

    respond_to do |format|
      if @subdepartamento.save
        format.html { redirect_to subdepartamentos_path, notice: 'Sub-Departamento creado' }
        format.json { render :show, status: :created, location: @subdepartamento }
      else
        format.html { render :new }
        format.json { render json: @subdepartamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subdepartamentos/1
  # PATCH/PUT /subdepartamentos/1.json
  def update
    respond_to do |format|
      if @subdepartamento.update(subdepartamento_params)
        format.html { redirect_to subdepartamentos_path, notice: 'Sub-Departamento actualizado' }
        format.json { render :show, status: :ok, location: @subdepartamento }
      else
        format.html { render :edit }
        format.json { render json: @subdepartamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subdepartamentos/1
  # DELETE /subdepartamentos/1.json
  def destroy
    @subdepartamento.destroy
    respond_to do |format|
      format.html { redirect_to subdepartamentos_url, notice: 'Sub-Departamento eliminado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subdepartamento
      @subdepartamento = Subdepartamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subdepartamento_params
      params.require(:subdepartamento).permit(:departamento_id, :codigo, :nombre, :activo)
    end
end
