class Turno < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este código de Turno ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Turno ya existe"}
end
