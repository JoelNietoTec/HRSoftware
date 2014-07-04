class CentroCosto < ActiveRecord::Base
  validates :codigo, presence: {message: "Es requerido"}
  validates :nombre, presence: {message: "Es requerido"}
  validates :codigo, uniqueness: {message: "Ya existe"}
  validates :nombre, uniqueness: {message: "Ya existe"}
end
