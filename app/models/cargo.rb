class Cargo < ActiveRecord::Base
  belongs_to :departamento
  validates :codigo, presence: {message: "Es requerido"}
  validates :nombre, presence: {message: "Es requerido"}
  validates :codigo, uniqueness: {message: "ya existe"}
  validates :nombre, uniqueness: { scope: :departamento_id, message: "ya existe" }
end
