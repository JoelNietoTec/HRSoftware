class MarcacionsController < ApplicationController
  def index
  end

  def import
    Marcacion.import(params[:file])
    redirect_to root_url, notice: "Marcaciones importadas"
  end
end
