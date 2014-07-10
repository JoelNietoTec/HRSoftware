class ProspectoExperiencia < ActiveRecord::Base
  belongs_to :prospecto
  validates :empresa, presence: {message: "Es requerido"}
  validates :cargo, presence: {message: "Es requerido"}
  validates :fecha_ingreso, presence: {message: "Es requerido"}
end
