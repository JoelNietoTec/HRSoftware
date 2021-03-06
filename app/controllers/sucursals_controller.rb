#encoding: UTF-8
class SucursalsController < ApplicationController
  before_action :set_sucursal, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Sucursales", :sucursals_path
  # GET /sucursals
  # GET /sucursals.json
  def index
    @sucursals = Sucursal.all
  end

  # GET /sucursals/1
  # GET /sucursals/1.json
  def show
  end

  # GET /sucursals/new
  def new
    @sucursal = Sucursal.new
    add_breadcrumb "Nuevo", new_sucursal_path
  end

  # GET /sucursals/1/edit
  def edit
      add_breadcrumb "Editar", edit_sucursal_path()
  end

  # POST /sucursals
  # POST /sucursals.json
  def create
    @sucursal = Sucursal.new(sucursal_params)

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to sucursals_path, notice: 'Sucursal creada' }
        format.json { render :show, status: :created, location: @sucursal }
      else
        format.html { render :new }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sucursals/1
  # PATCH/PUT /sucursals/1.json
  def update
    respond_to do |format|
      if @sucursal.update(sucursal_params)
        format.html { redirect_to sucursals_path, notice: 'Sucursal actualizada' }
        format.json { render :show, status: :ok, location: @sucursal }
      else
        format.html { render :edit }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursals/1
  # DELETE /sucursals/1.json
  def destroy
    @sucursal.destroy
    respond_to do |format|
      format.html { redirect_to sucursals_url, notice: 'Sucursal eliminada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sucursal_params
      params.require(:sucursal).permit(:codigo, :nombre, :activo)
    end
end
