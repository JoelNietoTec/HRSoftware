class Sucursal < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este codigo de Sucursal ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Sucursal ya existe"}
end
