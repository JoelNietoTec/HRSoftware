class PercargosController < ApplicationController
  before_action :set_percargo, only: [:show, :edit, :update, :destroy]

  # GET /percargos
  # GET /percargos.json
  def index
    @percargos = Percargo.all
  end

  # GET /percargos/1
  # GET /percargos/1.json
  def show
  end

  # GET /percargos/new
  def new
    @percargo = Percargo.new
  end

  # GET /percargos/1/edit
  def edit
  end

  # POST /percargos
  # POST /percargos.json
  def create
    @percargo = Percargo.new(percargo_params)

    respond_to do |format|
      if @percargo.save
        format.html { redirect_to @percargo, notice: 'Percargo was successfully created.' }
        format.json { render :show, status: :created, location: @percargo }
      else
        format.html { render :new }
        format.json { render json: @percargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /percargos/1
  # PATCH/PUT /percargos/1.json
  def update
    respond_to do |format|
      if @percargo.update(percargo_params)
        format.html { redirect_to @percargo, notice: 'Percargo was successfully updated.' }
        format.json { render :show, status: :ok, location: @percargo }
      else
        format.html { render :edit }
        format.json { render json: @percargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /percargos/1
  # DELETE /percargos/1.json
  def destroy
    @percargo.destroy
    respond_to do |format|
      format.html { redirect_to percargos_url, notice: 'Percargo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_percargo
      @percargo = Percargo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def percargo_params
      params.require(:percargo).permit(:cargo_id, :edadmax, :edadmin, :estcivil, :vehicprop, :nivelesc, :especesc, :sexopref, :tipoliccond, :habilidad, :comenta)
    end
end
