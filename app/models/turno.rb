class Turno < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este codigo de Turno ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Turno ya existe"}
end
