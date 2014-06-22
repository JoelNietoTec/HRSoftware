class Seccion < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este codigo de Seccion ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Seccion ya existe"}
end
