class Departamento < ActiveRecord::Base
  has_many :cargos
  validates :codigo, uniqueness: {message: "Este codigo de Departamento ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Departamento ya existe"}
end
