class JavascriptsController < ApplicationController
  def cargos_dinamicos
    @cargos = Cargo.find(:all)
  end
end
