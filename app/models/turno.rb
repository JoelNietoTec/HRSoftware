class Turno < ActiveRecord::Base
  validates :entrada, presence: {message: "Es requerido"}
  validates :salida, presence: {message: "Es requerido"}
  validates :codigo, uniqueness: {message: "Ya existe"}
  validates :nombre, uniqueness: {message: "Ta existe"}
  validates :codigo, presence: {message: "Es requerido"}
  validates :nombre, presence: {message: "Es requerido"}
end
