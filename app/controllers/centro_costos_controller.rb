class CentroCostosController < ApplicationController
  before_action :set_centro_costo, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Centros de Costos", :centro_costos_path
  # GET /centro_costos
  # GET /centro_costos.json
  def index
      add_breadcrumb "Listado", :centro_costos_path
    @centro_costos = CentroCosto.all
  end

  # GET /centro_costos/1
  # GET /centro_costos/1.json
  def show
      add_breadcrumb "Detalles", @centro_costos
  end

  # GET /centro_costos/new
  def new
    add_breadcrumb "Nuevo", new_centro_costo_path
    @centro_costo = CentroCosto.new
  end

  # GET /centro_costos/1/edit
  def edit
      add_breadcrumb "Editar", edit_centro_costo_path
  end

  # POST /centro_costos
  # POST /centro_costos.json
  def create
    @centro_costo = CentroCosto.new(centro_costo_params)

    respond_to do |format|
      if @centro_costo.save
        format.html { redirect_to centro_costos_path, notice: 'Centro costo was successfully created.' }
        format.json { render :show, status: :created, location: @centro_costo }
      else
        format.html { render :new }
        format.json { render json: @centro_costo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centro_costos/1
  # PATCH/PUT /centro_costos/1.json
  def update
    respond_to do |format|
      if @centro_costo.update(centro_costo_params)
        format.html { redirect_to centro_costo_path, notice: 'Centro costo was successfully updated.' }
        format.json { render :show, status: :ok, location: @centro_costo }
      else
        format.html { render :edit }
        format.json { render json: @centro_costo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centro_costos/1
  # DELETE /centro_costos/1.json
  def destroy
    @centro_costo.destroy
    respond_to do |format|
      format.html { redirect_to centro_costos_url, notice: 'Centro costo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centro_costo
      @centro_costo = CentroCosto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centro_costo_params
      params.require(:centro_costo).permit(:codigo, :nombre, :activo)
    end
end
