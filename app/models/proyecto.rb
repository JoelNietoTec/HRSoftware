class Proyecto < ActiveRecord::Base
  validates :codigo, uniqueness: {message: "Este codigo de Proyecto ya existe"}
  validates :nombre, uniqueness: {message: "Este nombre de Proyecto ya existe"}
end
