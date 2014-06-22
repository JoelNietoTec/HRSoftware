class CentroCosto < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este codigo de Centro de Costo ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Centro de Costo ya existe"}
end
