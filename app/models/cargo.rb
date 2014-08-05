class Cargo < ActiveRecord::Base
  belongs_to :departamento
  has_many :percargos
  has_many :reqcargos
  accepts_nested_attributes_for :percargos, allow_destroy: true
  accepts_nested_attributes_for :reqcargos, allow_destroy: true
  validates :codigo, presence: {message: "Es requerido"}
  validates :nombre, presence: {message: "Es requerido"}
  validates :codigo, uniqueness: {message: "ya existe"}
  validates :nombre, uniqueness: { scope: :departamento_id, message: "ya existe" }
end
