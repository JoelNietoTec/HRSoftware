class Cargo < ActiveRecord::Base
  belongs_to :departamento
  validates :codigo, uniqueness: {message: "Este codigo de Cargo ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Cargo ya existe"}
end
