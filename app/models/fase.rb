class Fase < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este codigo de Fase ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Fase ya existe"}
end
