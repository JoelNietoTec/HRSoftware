class Turno < ActiveRecord::Base
  validates :entrada, presence: {message: "Debe ingresar Hora de Entrada"}
  validates :salida, presence: {message: "Debe ingresar Hora de Salida"}
  validates :codigo, uniqueness: {message: "Este codigo de Turno ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Turno ya existe"}
end
