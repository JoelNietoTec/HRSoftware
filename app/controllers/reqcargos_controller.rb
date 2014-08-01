class ReqcargosController < ApplicationController
  before_action :set_reqcargo, only: [:show, :edit, :update, :destroy]

  # GET /reqcargos
  # GET /reqcargos.json
  def index
    @reqcargos = Reqcargo.all
  end

  # GET /reqcargos/1
  # GET /reqcargos/1.json
  def show
    add_breadcrumb "Detalles", @reqcargos
  end

  # GET /reqcargos/new
  def new
    @reqcargo = Reqcargo.new
  end

  # GET /reqcargos/1/edit
  def edit
  end

  # POST /reqcargos
  # POST /reqcargos.json
  def create
    @reqcargo = Reqcargo.new(reqcargo_params)

    respond_to do |format|
      if @reqcargo.save
        format.html { redirect_to @reqcargo, notice: 'Reqcargo was successfully created.' }
        format.json { render :show, status: :created, location: @reqcargo }
      else
        format.html { render :new }
        format.json { render json: @reqcargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reqcargos/1
  # PATCH/PUT /reqcargos/1.json
  def update
    respond_to do |format|
      if @reqcargo.update(reqcargo_params)
        format.html { redirect_to @reqcargo, notice: 'Reqcargo was successfully updated.' }
        format.json { render :show, status: :ok, location: @reqcargo }
      else
        format.html { render :edit }
        format.json { render json: @reqcargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqcargos/1
  # DELETE /reqcargos/1.json
  def destroy
    @reqcargo.destroy
    respond_to do |format|
      format.html { redirect_to reqcargos_url, notice: 'Reqcargo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reqcargo
      @reqcargo = Reqcargo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reqcargo_params
      params.require(:reqcargo).permit(:cargo_id, :nomrequis, :lactivo)
    end
end
